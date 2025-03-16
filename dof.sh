#!/bin/bash

# console color
RED='\033[0;31m'    # RED
GREEN='\033[0;32m'  # GREEN
YELLOW='\033[0;33m' # YELLOW
BLUE='\033[0;34m'   # BLUE
NC='\033[0m'        # NC

MYSQL_DIR="/opt/mysql"
MYSQL_IP="127.0.0.1"
MYSQL_PORT="3306"
ROOT_PASSWORD="123456"
GAME_PASSWORD="uu5!^%jg"
DEC_GAME_PASSWORD="20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b"

GITHUB_PROXY="https://ghfast.top/"

SWAP_FILE="/swapfile"
SWAP_SIZE=$((1024 * 6))
VM_SWAPPINESS="100"

# upload all install files
BASE_DIR="/root"

# log
log_error() {
    echo -e "${RED}$1${NC}"
}

log_success() {
    echo -e "${GREEN}$1${NC}"
}

log_warning() {
    echo -e "${YELLOW}$1${NC}"
}

log_info() {
    echo -e "${BLUE}$1${NC}"
}

function replace_yum_repo() {
    log_info "replace yum repo..."

    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

    mv /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup
    curl -o /etc/yum.repos.d/epel.repo https://mirrors.aliyun.com/repo/epel-7.repo

    yum clean all
    yum makecache
}

function install_library() {
    log_info "install library..."

    yum update -y
    yum install -y \
        epel-release \
        perl \
        autoconf \
        psmisc \
        glibc.i686 \
        zlib.i686 \
        libstdc++.i686 \
        net-tools \
        htop \
        GeoIP.i686

    log_success "library installed!!!"
}

function check_system() {
    # check if CentOS
    if [ ! -f /etc/redhat-release ]; then
        log_error "current system is not CentOS"
        exit
    fi

    # get system version
    if grep -q "CentOS Linux release 7" /etc/redhat-release; then
        local system_version=$(cat /etc/redhat-release)
        log_success "system version: $system_version"
    else
        log_error "current system version: $(cat /etc/redhat-release)"
        exit
    fi
}

function remove_mysql() {
    log_info "remove MySQL..."

    chkconfig mysql off
    service mysql stop

    rpm -qa | grep mariadb | xargs rpm -e --nodeps
    rpm -qa | grep MariaDB | xargs rpm -e --nodeps
    rpm -qa | grep mysql | xargs rpm -e --nodeps
    rpm -qa | grep MySQL | xargs rpm -e --nodeps

    log_info "remove MySQL data files..."
    rm -rf /etc/my.cnf
    rm -rf /var/lib/mysql
    rm -rf $MYSQL_DIR

    log_info "remove MySQL user and group..."
    userdel -f mysql
    groupdel -f mysql

    log_success "MySQL removed!!!"
}

function download_mysql() {
    log_info "download MySQL..."

    cd $BASE_DIR
    if [ ! -f MySQL.tar.gz ]; then
        curl -o MySQL.tar.gz "${GITHUB_PROXY}https://raw.githubusercontent.com/weiguangchao/dof-install/master/MySQL.tar.gz"

        if [ ! -f MySQL.tar.gz ]; then
            log_error "MySQL download failed!!!"
            exit
        fi

        log_success "MySQL downloaded!!!"
    fi
}

function install_mysql() {
    log_info "install MySQL..."

    cd $BASE_DIR
    tar -zxvf MySQL.tar.gz
    rpm -ivh MySQL-client-5.5.62-1.el6.x86_64.rpm
    rpm -ivh MySQL-server-5.5.62-1.el6.x86_64.rpm

    chkconfig mysql on

    log_success "MySQL installed!!!"
}

function init_game_database() {
    log_info "init game database..."

    local admin_password=""
    read -p "please input [dnf_admin] user password: " admin_password
    # check if password is empty
    if [ -z "$admin_password" ]; then
        log_warning "password can't be empty"
        exit
    fi

    # init game database
    mysql -h$MYSQL_IP -P$MYSQL_PORT -uroot -p$ROOT_PASSWORD <<EOF
CREATE SCHEMA d_channel DEFAULT CHARACTER SET latin1 ;
USE d_channel;
SOURCE $BASE_DIR/init_sql/d_channel.sql;
CREATE SCHEMA d_guild DEFAULT CHARACTER SET latin1 ;
USE d_guild;
SOURCE $BASE_DIR/init_sql/d_guild.sql;
CREATE SCHEMA d_taiwan_secu DEFAULT CHARACTER SET latin1 ;
USE d_taiwan_secu;
SOURCE $BASE_DIR/init_sql/d_taiwan_secu.sql;
CREATE SCHEMA d_taiwan DEFAULT CHARACTER SET latin1 ;
USE d_taiwan;
SOURCE $BASE_DIR/init_sql/d_taiwan.sql;
CREATE SCHEMA d_technical_report DEFAULT CHARACTER SET latin1 ;
USE d_technical_report;
SOURCE $BASE_DIR/init_sql/d_technical_report.sql;
CREATE SCHEMA taiwan_billing DEFAULT CHARACTER SET latin1 ;
USE taiwan_billing;
SOURCE $BASE_DIR/init_sql/taiwan_billing.sql;
CREATE SCHEMA taiwan_cain_2nd DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain_2nd;
SOURCE $BASE_DIR/init_sql/taiwan_cain_2nd.sql;
CREATE SCHEMA taiwan_cain_auction_cera DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain_auction_cera;
SOURCE $BASE_DIR/init_sql/taiwan_cain_auction_cera.sql;
CREATE SCHEMA taiwan_cain_auction_gold DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain_auction_gold;
SOURCE $BASE_DIR/init_sql/taiwan_cain_auction_gold.sql;
CREATE SCHEMA taiwan_cain_log DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain_log;
SOURCE $BASE_DIR/init_sql/taiwan_cain_log.sql;
CREATE SCHEMA taiwan_cain_web DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain_web;
SOURCE $BASE_DIR/init_sql/taiwan_cain_web.sql;
CREATE SCHEMA taiwan_cain DEFAULT CHARACTER SET latin1 ;
USE taiwan_cain;
SOURCE $BASE_DIR/init_sql/taiwan_cain.sql;
CREATE SCHEMA taiwan_game_event DEFAULT CHARACTER SET latin1 ;
USE taiwan_game_event;
SOURCE $BASE_DIR/init_sql/taiwan_game_event.sql;
CREATE SCHEMA taiwan_login_play DEFAULT CHARACTER SET latin1 ;
USE taiwan_login_play;
SOURCE $BASE_DIR/init_sql/taiwan_login_play.sql;
CREATE SCHEMA taiwan_login DEFAULT CHARACTER SET latin1 ;
USE taiwan_login;
SOURCE $BASE_DIR/init_sql/taiwan_login.sql;
CREATE SCHEMA taiwan_main_web DEFAULT CHARACTER SET latin1 ;
USE taiwan_main_web;
SOURCE $BASE_DIR/init_sql/taiwan_main_web.sql;
CREATE SCHEMA taiwan_mng_manager DEFAULT CHARACTER SET latin1 ;
USE taiwan_mng_manager;
SOURCE $BASE_DIR/init_sql/taiwan_mng_manager.sql;
CREATE SCHEMA taiwan_prod DEFAULT CHARACTER SET latin1 ;
USE taiwan_prod;
SOURCE $BASE_DIR/init_sql/taiwan_prod.sql;
CREATE SCHEMA taiwan_pvp DEFAULT CHARACTER SET latin1 ;
USE taiwan_pvp;
SOURCE $BASE_DIR/init_sql/taiwan_pvp.sql;
CREATE SCHEMA taiwan_se_event DEFAULT CHARACTER SET latin1 ;
USE taiwan_se_event;
SOURCE $BASE_DIR/init_sql/taiwan_se_event.sql;
CREATE SCHEMA taiwan_siroco DEFAULT CHARACTER SET latin1 ;
USE taiwan_siroco;
SOURCE $BASE_DIR/init_sql/taiwan_siroco.sql;

UPDATE d_taiwan.db_connect SET db_ip="$MYSQL_IP", db_port="$MYSQL_PORT", db_passwd="$DEC_GAME_PASSWORD";

USE d_taiwan;
delimiter $

DROP TRIGGER IF EXISTS update_limit_create_character;

CREATE TRIGGER update_limit_create_character 
BEFORE UPDATE ON limit_create_character 
FOR EACH ROW
BEGIN
    IF new.count = 2 THEN
        SET new.count = 0;
    END IF;
END
$

delimiter ;

USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'game'@'localhost' IDENTIFIED BY "$GAME_PASSWORD";
GRANT ALL PRIVILEGES ON *.* TO 'game'@'127.0.0.1' IDENTIFIED BY "$GAME_PASSWORD";
GRANT ALL PRIVILEGES ON *.* TO 'dnf_admin'@'%' IDENTIFIED BY "$admin_password";
FLUSH PRIVILEGES;
exit;
EOF

    # test game user login
    mysql -h$MYSQL_IP -P$MYSQL_PORT -ugame -p$GAME_PASSWORD <<EOF
    SELECT db_ip, db_port, db_passwd FROM d_taiwan.db_connect;
    exit;
EOF

    log_success "game database initialized!!!"
}

function init_database() {
    log_info "init database..."

    service mysql stop

    mkdir -p $MYSQL_DIR/data
    chown -R mysql.mysql $MYSQL_DIR

    mv $BASE_DIR/my.cnf /etc/my.cnf
    chmod 644 /etc/my.cnf
    chown mysql.mysql /etc/my.cnf

    # init database
    mysql_install_db --defaults-file=/etc/my.cnf \
        --user=mysql

    service mysql start
    mysqladmin -h$MYSQL_IP -P$MYSQL_PORT -uroot password $ROOT_PASSWORD

    mysql -h$MYSQL_IP -P$MYSQL_PORT -uroot -p$ROOT_PASSWORD <<EOF
DROP DATABASE IF EXISTS test;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' IDENTIFIED BY '$ROOT_PASSWORD';
FLUSH PRIVILEGES;
exit;
EOF

    log_success "database initialized!!! root password: $ROOT_PASSWORD"

    init_game_database
    clean_database_install_files
}

function clean_database_install_files() {
    log_info "clean database install files..."

    rm -rf $BASE_DIR/init_sql
    rm -rf $BASE_DIR/MySQL-client-5.5.62-1.el6.x86_64.rpm
    rm -rf $BASE_DIR/MySQL-server-5.5.62-1.el6.x86_64.rpm

    log_success "database install files cleaned!!!"
}

function check_root_user() {
    if [ "$EUID" -ne 0 ]; then
        log_error "please use root user to execute this script"
        exit
    fi
    log_success "current user: root"
}

function set_swap() {
    log_info "set swap..."

    # check if swap exists
    local swap_exists=$(swapon --show)
    if [ ! -z "$swap_exists" ]; then
        local current_swap=$(free -m | awk '/Swap:/ {print $2}')
        log_warning "swap space ${current_swap}MB already exists, no need to add"
        return
    fi

    log_info "create swap file $SWAP_FILE, size ${SWAP_SIZE}MB..."
    dd if=/dev/zero of=$SWAP_FILE bs=1M count=$SWAP_SIZE status=progress

    chmod 600 $SWAP_FILE
    mkswap $SWAP_FILE
    swapon $SWAP_FILE
    echo "$SWAP_FILE swap swap defaults 0 0" >>/etc/fstab

    if grep -q "^vm.swappiness" /etc/sysctl.conf; then
        sed -i 's/^vm.swappiness=.*/vm.swappiness=$VM_SWAPPINESS/' /etc/sysctl.conf
    else
        echo "vm.swappiness=$VM_SWAPPINESS" >>/etc/sysctl.conf
    fi

    sysctl -p
    log_success "swap set successfully!!! $(sysctl vm.swappiness)"
    free -h
}

function disable_selinux() {
    setenforce 0
    sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config

    local config_status=$(grep "^SELINUX=" /etc/selinux/config)
    log_success "SELinux disabled!!! $config_status"
}

function remove_dnfserver() {
    log_info "remove DNF Server..."

    rm -rf /home/neople
    rm -rf /root/PUBLIC_IP
    rm -rf /root/run
    rm -rf /root/stop
    rm -rf /dp2

    log_success "DNF Server removed!!!"
}

function download_dnfserver() {
    log_info "download DNF Server..."

    cd $BASE_DIR
    if [ ! -f Game.tar.gz ]; then
        curl -o Game.tar.gz "${GITHUB_PROXY}https://raw.githubusercontent.com/weiguangchao/dof-install/master/Game.tar.gz"

        if [ ! -f Game.tar.gz ]; then
            log_error "Game download failed!!!"
            exit
        fi

        log_success "Game downloaded!!!"
    fi
}

function install_dnfserver() {
    local server_ip=""
    read -p "please input Server IP: " server_ip
    if [ -z "$server_ip" ]; then
        log_error "Server IP can't be empty!!!"
        exit
    fi

    log_info "install DNF Server($server_ip)..."

    cd $BASE_DIR
    tar -zxvf Game.tar.gz

    mv ./dp2 /
    mv ./home/neople /home
    mv ./usr/lib/* /usr/lib

    chmod -R 777 /dp2
    chmod -R 777 /home/neople
    chmod +x ./run
    chmod +x ./stop

    log_info "replace environment variables..."
    cd /home/neople
    sed -i "s/PUBLIC_IP/${server_ip}/g" $(find . -type f -name "*.cfg")
    sed -i "s/PUBLIC_IP/${server_ip}/g" $(find . -type f -name "*.tbl")

    echo $server_ip >/root/PUBLIC_IP

    log_success "DNF Server installed!!!"
}

function remove_dnfserver_install_files() {
    log_info "remove dnf server install files..."

    rm -rf ./dp2
    rm -rf ./home
    rm -rf ./usr

    log_success "dnf server install files removed!!!"
}

function init_siroco() {
    local channel_no=$1
    local process_sequence=$2
    local channel_name="siroco$channel_no"

    log_info "init Siroco channel $channel_no, process_sequence $process_sequence..."

    cd /home/neople/game
    rm -rf ./cfg/$channel_name.cfg
    cp ./cfg/siroco.template ./cfg/$channel_name.cfg

    PUBLIC_IP=$(cat /root/PUBLIC_IP 2>/dev/null || true)
    if [ -z "$PUBLIC_IP" ]; then
        log_error "PUBLIC_IP is empty"
        exit
    fi

    log_info "PUBLIC_IP is $PUBLIC_IP"
    sed -i "s/CHANNEL_NO/$channel_no/g" ./cfg/$channel_name.cfg
    sed -i "s/PROCESS_SEQUENCE/$process_sequence/g" ./cfg/$channel_name.cfg
    sed -i "s/PUBLIC_IP/$PUBLIC_IP/g" ./cfg/$channel_name.cfg
    log_success "generate $channel_name.cfg success"
}

function init_channel() {
    log_info "init channel..."

    # init siroco 11 channel
    init_siroco 11 11

    log_success "Siroco channel initialized!!!"
}

function backup_database() {
    log_info "backup database..."
    local databases=$(mysql -h $MYSQL_IP -P $MYSQL_PORT -u root -p$ROOT_PASSWORD -N -e "
        SELECT GROUP_CONCAT(schema_name SEPARATOR ' ')
        FROM information_schema.schemata
        WHERE schema_name NOT IN (
            'information_schema',
            'mysql',
            'performance_schema',
            'sys',
            'test'
        );
    ")

    log_warning "backup databases: $databases"

    mysqldump -h$MYSQL_IP -P$MYSQL_PORT -uroot -p$ROOT_PASSWORD \
        --databases $databases \
        >/root/dof_bakup.sql
    log_success "database backup success!!!"
}

function restore_database() {
    if [ ! -f /root/dof_bakup.sql ]; then
        log_error "dof_bakup.sql not found on /root directory"
        exit
    fi

    log_info "restore database..."
    mysql -h$MYSQL_IP -P$MYSQL_PORT -uroot -p$ROOT_PASSWORD </root/dof_bakup.sql
    log_success "database restore success!!!"
}

function remove_gate() {
    log_info "remove dnf gate..."
    rm -rf /root/Config.ini
    rm -rf /root/DnfGateServer
    rm -rf /root/GateRestart
    rm -rf /root/GateStop
    rm -rf /root/privatekey.pem
    rm -rf /home/neople/game/publickey.pem

    log_success "dnf gate removed!!!"
}

function download_gate() {
    log_info "download dnf gate..."

    cd $BASE_DIR
    if [ ! -f Gate.tar.gz ]; then
        curl -o Gate.tar.gz "${GITHUB_PROXY}https://raw.githubusercontent.com/weiguangchao/dof-install/master/Gate.tar.gz"

        if [ ! -f Gate.tar.gz ]; then
            log_error "Gate download failed!!!"
            exit
        fi

        log_success "Gate downloaded!!!"
    fi
}

function download_files() {
    download_mysql
    download_dnfserver
    download_gate
}

function install_gate() {
    log_info "install dnf gate..."

    cd $BASE_DIR
    tar -zxvf ./Gate.tar.gz

    mv ./home/neople/game/publickey.pem /home/neople/game/publickey.pem
    mv ./usr/lib64/* /usr/lib64

    chmod +x $BASE_DIR/DnfGateServer
    chmod +x $BASE_DIR/GateRestart
    chmod +x $BASE_DIR/GateStop

    remove_gate_install_files

    log_success "DNF Gate installed!!!"
}

function remove_gate_install_files() {
    log_info "remove dnf gate install files..."

    rm -rf ./home
    rm -rf ./usr

    log_success "dnf gate install files removed!!!"
}

function echo_banner() {
    clear
    log_error "
██████╗  ██████╗ ███████╗
██╔══██╗██╔═══██╗██╔════╝
██║  ██║██║   ██║█████╗  
██║  ██║██║   ██║██╔══╝  
██████╔╝╚██████╔╝██║     
╚═════╝  ╚═════╝ ╚═╝     by https://github.com/weiguangchao
"
}

function init_dof() {
    if [ -f /root/init_dof ]; then
        return
    fi

    log_error "即将准备安装环境，按任意键继续..."
    read -n 1 -s -r

    log_info "init dof..."
    check_system
    check_root_user
    check_dir

    disable_selinux
    set_swap
    replace_yum_repo
    install_library
    download_files

    touch /root/init_dof
    log_success "dof initialized!!!"
}

function check_dir() {
    if [ ! -d "$BASE_DIR" ]; then
        log_error "please cd to $BASE_DIR directory"
        exit
    fi
}

function install_all() {
    reinstall_database
    reinstall_dnfserver
}

function reinstall_database() {
    remove_mysql
    install_mysql
    init_database
}

function reinstall_dnfserver() {
    remove_dnfserver
    install_dnfserver
    init_channel
}

function reinstall_gate() {
    remove_gate
    install_gate
}

function echo_menu() {
    log_warning "————————————服务端搭建————————————"
    log_success "1) 一键搭建(2,3)"
    log_success "2) 安装服务端"
    log_success "3) 安装数据库"
    log_success "4) 安装统一网关"
    log_info "以上命令均可重复执行, 多次可重装"
    log_warning "———————————————其他———————————————"
    log_success "5) 备份数据库"
    log_success "6) 恢复数据库"
    log_warning "——————————————————————————————————"
    log_success "0) 退出脚本"
}

function read_menu_command() {
    read -p "请输入数字 [0-6]:" num
    case "${num}" in
    1)
        install_all
        ;;
    2)
        reinstall_dnfserver
        ;;
    3)
        reinstall_database
        ;;
    4)
        reinstall_gate
        ;;
    5)
        backup_database
        ;;
    6)
        log_error "将dof_bakup.sql文件上传到/root目录下, 按任意键继续..."
        read -n 1 -s -r
        restore_database
        ;;
    *)
        exit
        ;;
    esac
}

function main() {
    init_dof
    echo_banner
    echo_menu
    read_menu_command
}

main
