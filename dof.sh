#!/bin/bash

# 下载地址 下载地址 下载地址 下载地址 下载地址
GAME_DOWNLOAD_URL="https://github.com/weiguangchao/dof-install/releases/download/v0.1.1/Game.tar.gz"
MYSQL_DOWNLOAD_URL="https://github.com/weiguangchao/dof-install/releases/download/v0.1.1/MySQL.tar.gz"
GATE_DOWNLOAD_URL="https://github.com/weiguangchao/dof-install/releases/download/v0.1.1/Gate.tar.gz"

# 定义颜色
RED='\033[0;31m'    # RED
GREEN='\033[0;32m'  # GREEN
YELLOW='\033[0;33m' # YELLOW
BLUE='\033[0;34m'   # BLUE
NC='\033[0m'        # NC

MYSQL_PORT="3306"

MYSQL_DIR="/opt/mysql"
MYSQL_IP="127.0.0.1"
ROOT_PASSWORD="123456"
GAME_PASSWORD="uu5!^%jg"
DEC_GAME_PASSWORD="20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b"

SWAP_FILE="/swapfile"
BASE_DIR="/root"
GM_USER_FILE="$BASE_DIR/gm_user"
PREPARE_DOF_FILE="$BASE_DIR/prepare_dof"
# 随机密码随机池
CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890123456789"

# 默认大区 卡恩
SERVER_GROUP=1

# 大区对应名称
# 1 : 卡恩, 2 :狄瑞吉, 3 : 希洛克, 4 : 普雷prey, 5 : 凱西亞斯casillas, 6 : 赫爾德hilder , 99 : first server first , 98 : 開發server
SERVER_GROUP_NAME_1="cain"
SERVER_GROUP_NAME_2="diregie"
SERVER_GROUP_NAME_3="siroco"
SERVER_GROUP_NAME_4="prey"
SERVER_GROUP_NAME_5="casillas"
SERVER_GROUP_NAME_6="hilder"

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

function random_string() {
    local length=$1
    # 默认长度为8
    if [ -z "$length" ]; then
        length=8
    fi
    # 检查参数是否为数字
    if ! [[ "$length" =~ ^[0-9]+$ ]]; then
        log_error "错误：长度必须是数字"
        exit
    fi
    # 生成随机字符串
    echo "$CHARS" | fold -w1 | shuf | tr -d '\n' | head -c"$length"
}

function update_yum_repo() {
    log_info "替换yum源..."

    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
    mv /etc/yum.repos.d/CentOS-7.repo /etc/yum.repos.d/CentOS-7.repo.backup
    curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo

    mv /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup
    curl -o /etc/yum.repos.d/epel.repo https://mirrors.aliyun.com/repo/epel-7.repo

    yum clean all
    yum makecache
    yum update -y
    log_success "yum源替换成功!!!"
}

function install_library() {
    log_info "安装库..."

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
        libaio \
        screen \
        wget \
        GeoIP.i686

    log_success "库安装成功!!!"
}

function check_system() {
    if [ ! -f /etc/redhat-release ]; then
        log_error "请使用CentOS系统!!!"
        exit
    fi

    if grep -q "CentOS Linux release 7" /etc/redhat-release; then
        local system_version=$(cat /etc/redhat-release)
        log_success "系统版本: $system_version"
    else
        log_error "请使用CentOS7系统, 当前系统版本: $(cat /etc/redhat-release)"
        exit
    fi
}

function remove_mysql() {
    log_info "卸载MySQL..."

    chkconfig mysql off
    service mysql stop

    rpm -qa | grep mariadb | xargs rpm -e --nodeps
    rpm -qa | grep MariaDB | xargs rpm -e --nodeps
    rpm -qa | grep mysql | xargs rpm -e --nodeps
    rpm -qa | grep MySQL | xargs rpm -e --nodeps

    log_info "删除MySQL数据文件..."
    rm -rf /etc/my.cnf
    rm -rf /var/lib/mysql
    rm -rf $MYSQL_DIR

    log_info "删除MySQL用户和组..."
    userdel -f mysql
    groupdel -f mysql

    log_success "MySQL卸载成功!!!"
}

function download_mysql() {
    if [ -f MySQL.tar.gz ]; then
        log_warning "MySQL.tar.gz 已存在!!!"
        return
    fi

    log_info "下载MySQL..."
    cd $BASE_DIR
    wget "$MYSQL_DOWNLOAD_URL"

    if [ ! -f MySQL.tar.gz ]; then
        log_error "MySQL.tar.gz 下载失败!!!"
        exit
    fi

    log_success "MySQL.tar.gz 下载成功!!!"
}

function install_mysql() {
    log_info "安装MySQL..."

    cd $BASE_DIR
    tar -zxvf MySQL.tar.gz

    rpm -ivh mysql-community-common-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-libs-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-client-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-server-5.7.44-1.el7.x86_64.rpm

    if [ $? -ne 0 ]; then
        log_error "MySQL 安装失败, 请检查安装日志!!!"
        exit
    fi

    systemctl enable mysqld
    systemctl status mysqld

    log_success "MySQL 安装成功!!!"
}

function get_gm_name() {
    # 读取gm_user.txt文件
    local gm_user=$(cat $GM_USER_FILE)
    # 通过:分割
    local gm_name=$(echo $gm_user | cut -d ':' -f 1)
    echo $gm_name
}

function get_gm_password() {
    # 读取gm_user.txt文件
    local gm_user=$(cat $GM_USER_FILE)
    # 通过:分割
    local gm_password=$(echo $gm_user | cut -d ':' -f 2)
    echo $gm_password
}

function save_gm_user() {
    local gm_name=$1
    local gm_password=$2

    # 如果文件存在, 则删除
    if [ -f $GM_USER_FILE ]; then
        rm -f $GM_USER_FILE
    fi
    echo "$gm_name:$gm_password" >$GM_USER_FILE
}

function init_game_database() {
    log_info "初始化大区数据库..."

    # 获取gm用户名和密码
    local gm_name=$(get_gm_name)
    local gm_password=$(get_gm_password)
    if [ -z "$gm_name" ] || [ -z "$gm_password" ]; then
        gm_name=$(random_string 8)
        gm_password=$(random_string 12)
        # 将gm用户密码写入文件
        save_gm_user $gm_name $gm_password
    fi

    # 设置用户权限
    mysql -uroot -p$ROOT_PASSWORD <<EOF
grant all privileges on *.* to 'game'@'localhost' identified by "$GAME_PASSWORD";
grant all privileges on *.* to '$gm_name'@'%' identified by "$gm_password";
flush privileges;
EOF
    if [ $? -ne 0 ]; then
        log_error "初始化game用户失败!!!"
        exit
    fi

    log_success "GM 用户名: $gm_name 密码: $gm_password"

    # 使用game用户初始化数据库
    mysql -ugame -p$GAME_PASSWORD <<EOF
-- 初始化数据库
source $BASE_DIR/init_sql/d_channel.sql
source $BASE_DIR/init_sql/d_guild.sql
source $BASE_DIR/init_sql/d_taiwan.sql
source $BASE_DIR/init_sql/d_taiwan_secu.sql
source $BASE_DIR/init_sql/d_technical_report.sql
source $BASE_DIR/init_sql/taiwan_billing.sql
source $BASE_DIR/init_sql/taiwan_cain.sql
source $BASE_DIR/init_sql/taiwan_cain_2nd.sql
source $BASE_DIR/init_sql/taiwan_cain_auction_cera.sql
source $BASE_DIR/init_sql/taiwan_cain_auction_gold.sql
source $BASE_DIR/init_sql/taiwan_cain_log.sql
source $BASE_DIR/init_sql/taiwan_cain_web.sql
source $BASE_DIR/init_sql/taiwan_game_event.sql
source $BASE_DIR/init_sql/taiwan_login.sql
source $BASE_DIR/init_sql/taiwan_login_play.sql
source $BASE_DIR/init_sql/taiwan_main_web.sql
source $BASE_DIR/init_sql/taiwan_mng_manager.sql
source $BASE_DIR/init_sql/taiwan_prod.sql
source $BASE_DIR/init_sql/taiwan_pvp.sql
source $BASE_DIR/init_sql/taiwan_se_event.sql
source $BASE_DIR/init_sql/clear.sql

-- 设置数据库连接配置
update d_taiwan.db_connect set db_ip="$MYSQL_IP", db_port="$MYSQL_PORT", db_passwd="$DEC_GAME_PASSWORD";

-- 自动尊10
alter table taiwan_cain.pvp_result 
modify column pvp_grade int(11) not null default 29;

-- 解除创建角色数量限制
use d_taiwan;
drop trigger if exists update_limit_create_character;

delimiter $

create trigger update_limit_create_character 
before update on limit_create_character 
for each row
begin
    if new.count = 2 then
        set new.count = 0;
    end if;
end
$

delimiter ;

-- 修复晶体契约重新登陆后消失
use taiwan_cain;
create table cube_premium (
    charac_no int,
    selected int,
    cube_type int
);
EOF
    if [ $? -ne 0 ]; then
        log_error "大区数据库初始化失败!!!"
        exit
    fi

    log_success "大区数据库初始化成功!!!"
}

function init_database() {
    log_info "初始化本地数据库..."

    systemctl stop mysqld

    mkdir -p $MYSQL_DIR/data
    mkdir -p $MYSQL_DIR/base
    chmod 755 $MYSQL_DIR
    chown -R mysql.mysql $MYSQL_DIR

    mv $BASE_DIR/my.cnf /etc/my.cnf
    chmod 644 /etc/my.cnf
    chown mysql.mysql /etc/my.cnf

    mysqld --defaults-file=/etc/my.cnf \
        --initialize-insecure \
        --user=mysql \
        --explicit_defaults_for_timestamp

    systemctl start mysqld
    # 检查本地数据库是否初始化成功
    mysql -uroot --skip-password <<EOF
alter user 'root'@'localhost' identified by '$ROOT_PASSWORD';
flush privileges;
EOF
    if [ $? -ne 0 ]; then
        log_error "本地数据库初始化失败!!!"
        exit
    fi

    log_success "本地数据库初始化成功!!! root密码: $ROOT_PASSWORD"
}

function clean_database_install_files() {
    log_info "清理数据库安装文件..."

    rm -rf $BASE_DIR/init_sql
    rm -rf $BASE_DIR/mysql-community-common-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-libs-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-client-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-server-5.7.44-1.el7.x86_64.rpm

    log_success "本地数据库安装文件清理成功!!!"
}

function check_root_user() {
    if [ "$EUID" -ne 0 ]; then
        log_error "请使用root用户执行此脚本"
        exit
    fi
    log_success "当前用户: root"
}

function set_swap() {
    log_info "设置swap..."

    local swap_exists=$(swapon --show)
    if [ ! -z "$swap_exists" ]; then
        log_warning "swap分区已存在, 无需进行设置!!!"
        return
    fi

    local total_mem=$(grep MemTotal /proc/meminfo | awk '{print $2}')
    local total_mem_gb=$((total_mem / 1024 / 1024))

    # 内存 >= 8GB
    if [ $total_mem_gb -ge 8 ]; then
        log_warning "内存 >= 8GB, 无需设置swap分区!!!"
        return
    fi

    local swap_size=$((1024 * 8))
    local vm_swappiness=100

    log_info "创建swap文件 $SWAP_FILE, 大小 ${swap_size}MB..."

    dd if=/dev/zero of=$SWAP_FILE bs=1M count=$swap_size status=progress
    chmod 600 $SWAP_FILE
    mkswap $SWAP_FILE
    swapon $SWAP_FILE
    echo "$SWAP_FILE swap swap defaults 0 0" >>/etc/fstab

    if grep -q "^vm.swappiness" /etc/sysctl.conf; then
        sed -i 's/^vm.swappiness=.*/vm.swappiness=$vm_swappiness/' /etc/sysctl.conf
    else
        echo "vm.swappiness=$vm_swappiness" >>/etc/sysctl.conf
    fi

    sysctl -p
    log_success "swap设置成功!!! $(sysctl vm.swappiness)"
    free -h
}

function remove_dofserver() {
    log_info "卸载DOF Server..."

    rm -rf /home/neople
    rm -rf $BASE_DIR/PUBLIC_IP
    rm -rf $BASE_DIR/run
    rm -rf $BASE_DIR/stop

    log_success "DOF Server卸载成功!!!"
}

function download_dofserver() {
    if [ -f Game.tar.gz ]; then
        log_warning "Game.tar.gz 已存在!!!"
        return
    fi

    log_info "下载DOF Server..."

    cd $BASE_DIR
    wget "$GAME_DOWNLOAD_URL"

    if [ ! -f Game.tar.gz ]; then
        log_error "Game.tar.gz 下载失败!!!"
        exit
    fi

    log_success "Game.tar.gz 下载成功!!!"
}

function install_dofserver() {
    local server_ip=""
    read -p "输入服务器 IP: " server_ip
    if [ -z "$server_ip" ]; then
        log_error "服务器 IP不能为空!!!"
        exit
    fi

    log_info "安装DOF Server ($server_ip)..."

    cd $BASE_DIR
    tar -zxvf Game.tar.gz

    chmod -R 755 ./usr/lib
    chown -R root:root ./usr/lib
    mv ./usr/lib/* /usr/lib

    chmod -R 777 ./home/neople
    chown -R root:root ./home/neople
    mv ./home/neople /home

    chmod -R 777 ./run
    chmod -R 777 ./stop
    chmod -R 777 ./quickstop
    chown root:root ./run
    chown root:root ./stop
    chown root:root ./quickstop

    log_info "替换环境变量..."
    cd /home/neople
    sed -i "s/PUBLIC_IP/${server_ip}/g" $(find . -type f -name "*.cfg")
    sed -i "s/PUBLIC_IP/${server_ip}/g" $(find . -type f -name "*.tbl")

    echo $server_ip >/root/PUBLIC_IP

    log_success "DOF Server安装成功!!!"

    remove_dofserver_install_files
}

function remove_dofserver_install_files() {
    log_info "删除DOF Server安装文件..."

    cd $BASE_DIR
    rm -rf ./home
    rm -rf ./usr

    log_success "DOF Server安装文件删除成功!!!"
}

function init_server_group() {
    log_info "初始化频道..."

    # 校验大区
    if [ "$SERVER_GROUP" -ge 1 ] && [ "$SERVER_GROUP" -le 6 ]; then
        local SERVER_GROUP_NAME_VAR="SERVER_GROUP_NAME_$SERVER_GROUP"
        SERVER_GROUP_NAME=${!SERVER_GROUP_NAME_VAR}
        SERVER_GROUP_DB=$SERVER_GROUP_NAME
        log_success "当前大区编号: $SERVER_GROUP, 大区名称: $SERVER_GROUP_NAME"
    else
        log_error "无效的大区编号: $SERVER_GROUP"
        exit
    fi

    local channel_no=11
    local process_sequence=$channel_no
    local channel_name="${SERVER_GROUP_NAME}$channel_no"
    log_info "初始化${SERVER_GROUP_NAME}频道 $channel_no, 进程序号 $process_sequence..."

    cd /home/neople/game
    rm -rf ./cfg/$channel_name.cfg
    cp ./cfg/server.template ./cfg/$channel_name.cfg

    local PUBLIC_IP=$(cat /root/PUBLIC_IP 2>/dev/null || true)
    if [ -z "$PUBLIC_IP" ]; then
        log_error "PUBLIC_IP为空"
        exit
    fi
    log_info "PUBLIC_IP为 $PUBLIC_IP"

    sed -i "s/SERVER_GROUP/$SERVER_GROUP/g" ./cfg/$channel_name.cfg
    sed -i "s/CHANNEL_NO/$channel_no/g" ./cfg/$channel_name.cfg
    sed -i "s/PROCESS_SEQUENCE/$process_sequence/g" ./cfg/$channel_name.cfg
    sed -i "s/PUBLIC_IP/$PUBLIC_IP/g" ./cfg/$channel_name.cfg

    log_success "${SERVER_GROUP_NAME}频道初始化成功!!!"
}

function backup_database() {
    log_info "备份数据库..."
    # 跳过系统数据库
    local databases=$(mysql -u root -p$ROOT_PASSWORD -N -e "
        select group_concat(schema_name separator ' ')
        FROM information_schema.schemata
        WHERE schema_name NOT IN (
            'information_schema',
            'mysql',
            'performance_schema',
            'sys',
            'test'
        );
    ")

    log_warning "需要备份的数据库: $databases"

    mysqldump -uroot -p$ROOT_PASSWORD \
        --databases $databases \
        >/root/dof_bakup.sql
    log_success "数据库备份成功!!!"
}

function restore_database() {
    if [ ! -f /root/dof_bakup.sql ]; then
        log_error "dof_bakup.sql未找到在/root目录下"
        exit
    fi

    log_info "恢复数据库..."
    mysql -uroot -p$ROOT_PASSWORD </root/dof_bakup.sql
    log_success "数据库恢复成功!!!"
}

function remove_gate() {
    log_info "卸载DOF网关..."
    rm -rf /root/Config.ini
    rm -rf /root/DnfGateServer
    rm -rf /root/GateRestart
    rm -rf /root/GateStop
    rm -rf /root/privatekey.pem
    rm -rf /home/neople/game/publickey.pem

    log_success "DOF网关卸载成功!!!"
}

function download_gate() {
    if [ -f Gate.tar.gz ]; then
        log_warning "Gate.tar.gz 已存在!!!"
        return
    fi

    log_info "下载Gate.tar.gz..."

    cd $BASE_DIR
    wget "$GATE_DOWNLOAD_URL"

    if [ ! -f Gate.tar.gz ]; then
        log_error "Gate.tar.gz 下载失败!!!"
        exit
    fi

    log_success "Gate.tar.gz 下载成功!!!"
}

function download_files() {
    download_mysql
    download_dofserver
    download_gate
}

function install_gate() {
    log_info "安装统一网关..."

    cd $BASE_DIR
    tar -zxvf ./Gate.tar.gz

    chmod -R 755 ./usr/lib64/*
    chown -R root:root ./usr/lib64/*
    mv ./usr/lib64/* /usr/lib64

    chmod 777 ./home/neople/game/publickey.pem
    chown -R root:root ./home/neople/game/publickey.pem
    mv ./home/neople/game/publickey.pem /home/neople/game/publickey.pem

    chmod 777 ./DnfGateServer
    chown root:root ./DnfGateServer
    chmod 777 ./GateRestart
    chown root:root ./GateRestart
    chmod 777 ./GateStop
    chown root:root ./GateStop

    remove_gate_install_files

    log_success "统一网关安装成功!!!"
}

function remove_gate_install_files() {
    log_info "删除统一网关安装文件..."

    rm -rf ./home
    rm -rf ./usr

    log_success "统一网关安装文件删除成功!!!"
}

function prepare_dof() {
    if [ -f $PREPARE_DOF_FILE ]; then
        return
    fi

    log_error "准备安装环境, 按任意键继续..."
    read -n 1 -s -r

    log_info "初始化DOF安装环境..."
    check_system
    check_root_user
    performance_optimize
    set_swap
    update_yum_repo
    install_library

    touch $PREPARE_DOF_FILE
    log_error "DOF安装环境初始化成功, 按任意键重启..."
    # 按任意键重启
    read -n 1 -s -r
    reboot
}

function performance_optimize() {
    log_info "系统性能优化..."

    # 禁用SELinux
    setenforce 0
    # 如果存在则修改
    if grep -q "^SELINUX=" /etc/selinux/config; then
        sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
    else
        echo "SELINUX=disabled" >>/etc/selinux/config
    fi

    # 如果不存在则添加
    if ! grep -q "net.ipv4.tcp_syncookies" /etc/sysctl.conf; then
        echo "net.ipv4.tcp_syncookies = 1" >>/etc/sysctl.conf
    fi

    # 如果不存在则添加
    if ! grep -q "\$usersoft soft nofile 2048" /etc/security/limits.conf; then
        echo "\$usersoft soft nofile 2048" >>/etc/security/limits.conf
    fi

    # 如果不存在则添加
    if ! grep -q "\$user hard nofile 4096" /etc/security/limits.conf; then
        echo "\$user hard nofile 4096" >>/etc/security/limits.conf
    fi

    # 如果不存在则添加
    if ! grep -q "ulimit -n 65535" /etc/profile; then
        echo 'ulimit -n 65535' >>/etc/profile
    fi

    # 设置时区
    timedatectl set-timezone Asia/Shanghai

    log_success "系统性能优化成功!!!"
}

function restart_mysql() {
    log_info "重启MySQL..."

    sleep 1
    systemctl stop mysqld
    sleep 1
    systemctl start mysqld
    sleep 1

    log_success "MySQL重启成功!!!"
}

function install_all() {
    reinstall_database
    reinstall_dofserver
}

function reinstall_database() {
    remove_mysql
    install_mysql
    init_database
    init_game_database
    clean_database_install_files
    restart_mysql
}

function reinstall_dofserver() {
    remove_dofserver
    install_dofserver
    init_server_group
}

function reinstall_gate() {
    remove_gate
    install_gate
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
    log_warning "——————————————————————————————————"
    if [ -f $GM_USER_FILE ]; then
        log_success "GM 用户名: $(get_gm_name) 密码: $(get_gm_password)"
    fi
}

function read_menu_command() {
    read -p "请输入数字 [0-6]:" num
    case "${num}" in
    1)
        install_all
        ;;
    2)
        reinstall_dofserver
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
        log_error "将备份文件(dof_bakup.sql)放到 $BASE_DIR 目录下, 按任意键继续..."
        read -n 1 -s -r
        restore_database
        ;;
    *)
        exit
        ;;
    esac
}

function main() {
    prepare_dof
    download_files
    echo_banner
    echo_menu
    read_menu_command
}

main
