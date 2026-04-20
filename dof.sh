#!/bin/bash

set -e

PACKAGE_VERSION="1.0"
GITHUB_PROXY="https://ghfast.top/"
GAME_DOWNLOAD_URL=$GITHUB_PROXY"https://github.com/weiguangchao/dof-install/releases/download/$PACKAGE_VERSION/Game.tar.gz"
MYSQL_DOWNLOAD_URL=$GITHUB_PROXY"https://github.com/weiguangchao/dof-install/releases/download/$PACKAGE_VERSION/MySQL.tar.gz"

# 定义颜色
RED='\033[0;31m'    # RED
GREEN='\033[0;32m'  # GREEN
YELLOW='\033[0;33m' # YELLOW
BLUE='\033[0;34m'   # BLUE
NC='\033[0m'        # NC

MYSQL_DIR="/opt/mysql"
DEFAULT_MYSQL_IP="127.0.0.1"
DEFAULT_MYSQL_PORT="3306"
ROOT_PASSWORD="123456"
GAME_PASSWORD="uu5!^%jg"
DEC_GAME_PASSWORD="20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b"

REQUIRED_DISK_SPACE_GB=12
SWAP_FILE="/swapfile"
BASE_DIR="/root"
GM_USER_FILE="$BASE_DIR/gm_user"
PREPARE_DOF_FILE="$BASE_DIR/prepare_dof"

NEOPLE_DIR="/home/neople"
# 默认大区 希洛克
DEFAULT_SERVER_GROUP=3
# 11频道
DEFAULT_CHANNEL_NO=11

# 大区对应名称
# 1 : 卡恩, 2 :狄瑞吉, 3 : 希洛克, 4 : 普雷prey, 5 : 凱西亞斯casillas, 6 : 赫爾德hilder , 99 : first server first , 98 : 開發server
SERVER_GROUP_NAME_1="cain"
SERVER_GROUP_NAME_2="diregie"
SERVER_GROUP_NAME_3="siroco"
SERVER_GROUP_NAME_4="prey"
SERVER_GROUP_NAME_5="casillas"
SERVER_GROUP_NAME_6="hilder"

function log_error() {
    echo -e "${RED}$1${NC}"
}

function log_success() {
    echo -e "${GREEN}$1${NC}"
}

function log_warning() {
    echo -e "${YELLOW}$1${NC}"
}

function log_info() {
    echo -e "${BLUE}$1${NC}"
}

function random_string() {
    local length="${1:-8}"

    # 验证：必须是正整数
    if ! [[ "$length" =~ ^[1-9][0-9]*$ ]]; then
        log_error "错误：长度必须是正整数"
        exit 1
    fi

    # 使用 /dev/urandom 生成加密安全的随机字符串
    tr -dc 'a-zA-Z0-9' </dev/urandom | head -c "$length"
    echo
}

# 校验IP地址格式 (IPv4)
function is_valid_ip() {
    local ip="$1"

    # 校验基本格式 (x.x.x.x)
    if ! echo "$ip" | grep -qE '^([0-9]{1,3}\.){3}[0-9]{1,3}$'; then
        return 1
    fi

    # 校验每个数值范围 (0-255)
    local IFS='.'
    read -ra octets <<<"$ip"
    for octet in "${octets[@]}"; do
        if [ "$octet" -gt 255 ]; then
            return 1
        fi
    done

    return 0
}

# 格式化存储单位（MB -> GB/TB 等）
function format_size() {
    local size_mb="$1"
    local units=("MB" "GB" "TB" "PB")
    local index=0
    local size="$size_mb"

    while (($(echo "$size >= 1024" | bc -l 2>/dev/null || echo "0"))) && [ $index -lt 3 ]; do
        size=$(echo "scale=2; $size / 1024" | bc)
        ((index++))
    done

    # 如果bc不可用，使用简单计算
    if [ -z "$size" ] || [ "$size" = "0" ]; then
        size="$size_mb"
        index=0
        while [ "${size%.*}" -ge 1024 ] 2>/dev/null && [ $index -lt 3 ]; do
            size=$((size / 1024))
            ((index++))
        done
    fi

    # 去除末尾的.00
    if [[ "$size" =~ \.00$ ]]; then
        size="${size%.00}"
    fi

    echo "${size}${units[$index]}"
}

function get_gm_name() {
    if [ ! -f "$GM_USER_FILE" ]; then
        echo ""
        return
    fi

    # 读取gm_user.txt文件
    local gm_user=$(cat $GM_USER_FILE)
    # 通过:分割
    local gm_name=$(echo $gm_user | cut -d ':' -f 1)
    echo $gm_name
}

function get_gm_password() {
    if [ ! -f "$GM_USER_FILE" ]; then
        echo ""
        return
    fi

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

function check_system() {
    if [ ! -f /etc/redhat-release ]; then
        log_error "请使用CentOS系统!!!"
        exit 1
    fi

    local system_version=$(cat /etc/redhat-release)

    if grep -q "CentOS Linux release 7" <<<"$system_version"; then
        log_success "系统版本: $system_version"
    else
        log_error "请使用CentOS7系统, 当前系统版本: $system_version"
        exit 1
    fi
}

function check_root_user() {
    if [ "$EUID" -ne 0 ]; then
        log_error "请使用root用户执行此脚本"
        exit 1
    fi
    log_success "当前用户: root"
}

function check_current_dir() {
    if [ "$(pwd)" != "${BASE_DIR}" ]; then
        log_error "请在 ${BASE_DIR} 目录下执行此脚本, 当前目录: $(pwd)"
        exit 1
    fi
    log_success "当前目录: $(pwd)"
}

function check_disk_space() {
    local required_mb=$((REQUIRED_DISK_SPACE_GB * 1024))
    local available_mb=$(df -m / | awk 'NR==2 {print $4}')
    local available_formatted=$(format_size "$available_mb")

    if [ "$available_mb" -lt "$required_mb" ]; then
        log_error "磁盘空间不足, 需要至少 ${REQUIRED_DISK_SPACE_GB}GB, 实际可用 ${available_formatted}"
        exit 1
    fi

    log_success "磁盘空间检查通过: ${available_formatted}可用"
}

function install_yum_dependency() {
    log_info "开始安装yum依赖..."

    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
    curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo

    yum clean all
    yum makecache
    yum update -y

    yum install -y \
        perl \
        autoconf \
        psmisc \
        glibc.i686 \
        zlib.i686 \
        libstdc++.i686 \
        libaio \
        wget \
        net-tools \
        GeoIP.i686

    log_success "yum依赖安装完成"
}

function performance_optimize() {
    # 禁用SELinux
    if command -v setenforce &>/dev/null && [ -f /etc/selinux/config ]; then
        setenforce 0 2>/dev/null || true
        if grep -q "^SELINUX=" /etc/selinux/config; then
            sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
        else
            echo "SELINUX=disabled" >>/etc/selinux/config
        fi
        log_info "SELinux已禁用"
    else
        log_warning "SELinux未安装或已禁用, 跳过"
    fi

    log_info "系统性能优化完成"
}

function create_swap() {
    # 当前内存大小
    local memory=$(free -m | awk '/^Mem:/{print $2}')
    # 内存 > 6GB
    if [ $memory -ge $((6 * 1024)) ]; then
        log_warning "内存 > 6GB, 无需设置swap分区"
        return
    fi

    if [ -n "$(swapon --show)" ]; then
        log_warning "swap分区已存在, 无需进行设置"
        return
    fi

    # 内存 < 2GB
    local swap_size=$((6 * 1024))
    local vm_swappiness=100

    # 内存 > 4GB
    if [ $memory -ge $((4 * 1024)) ]; then
        swap_size=$((4 * 1024))
        vm_swappiness=75
    fi

    # 如果swap文件已存在，先删除
    if [ -f "$SWAP_FILE" ]; then
        log_warning "检测到已存在的swap文件, 正在删除..."
        rm -rf "$SWAP_FILE"
    fi

    log_info "创建swap文件$SWAP_FILE, 大小${swap_size_formatted}..."

    dd if=/dev/zero of=$SWAP_FILE bs=1M count=$swap_size status=progress
    chmod 600 $SWAP_FILE
    mkswap $SWAP_FILE
    swapon $SWAP_FILE

    sed -i "$SWAP_FILE swap swap/d" /etc/fstab
    sed -i '/vm.swappiness/d' /etc/sysctl.conf

    echo "$SWAP_FILE swap swap defaults 0 0" >>/etc/fstab
    echo "vm.swappiness=$vm_swappiness" >>/etc/sysctl.conf

    sysctl -p
    log_success "swap设置完成, 当前$(sysctl vm.swappiness), swap容量: $(free -h | awk '/^Swap:/{print $2}')"
}

function remove_mysql() {
    systemctl disable mysqld || true
    systemctl stop mysqld || true

    chkconfig mysql off || true
    service mysql stop || true

    log_info "MySQL服务已停止"

    rpm -qa | grep mariadb | xargs -r rpm -e --nodeps || true
    rpm -qa | grep MariaDB | xargs -r rpm -e --nodeps || true
    rpm -qa | grep mysql | xargs -r rpm -e --nodeps || true
    rpm -qa | grep MySQL | xargs -r rpm -e --nodeps || true

    rm -rf /etc/my.cnf
    rm -rf /var/lib/mysql
    rm -rf $MYSQL_DIR

    userdel -f mysql || true
    groupdel -f mysql || true

    log_success "MySQL卸载完成"
}

function install_mysql() {
    log_info "开始安装MySQL..."
    cd $BASE_DIR
    tar -zxvf MySQL.tar.gz --no-overwrite-dir --no-same-owner

    rpm -ivh mysql-community-common-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-libs-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-client-5.7.44-1.el7.x86_64.rpm
    rpm -ivh mysql-community-server-5.7.44-1.el7.x86_64.rpm

    log_success "MySQL安装完成"
}

function remove_database_install_files() {
    rm -rf $BASE_DIR/mysql-community-common-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-libs-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-client-5.7.44-1.el7.x86_64.rpm
    rm -rf $BASE_DIR/mysql-community-server-5.7.44-1.el7.x86_64.rpm

    log_info "数据库安装文件清理完成"
}

function init_database() {
    log_info "开始初始化MySQL..."

    systemctl daemon-reload
    systemctl stop mysqld

    mkdir -p $MYSQL_DIR/data
    mkdir -p $MYSQL_DIR/base
    chmod 755 $MYSQL_DIR
    chown -R mysql.mysql $MYSQL_DIR

    sed -i "s/MYSQL_PORT/$DEFAULT_MYSQL_PORT/g" $BASE_DIR/my.cnf
    mv -f $BASE_DIR/my.cnf /etc/my.cnf

    chmod 644 /etc/my.cnf
    chown mysql.mysql /etc/my.cnf

    mysqld --defaults-file=/etc/my.cnf \
        --initialize-insecure \
        --user=mysql \
        --explicit_defaults_for_timestamp

    systemctl enable mysqld
    systemctl start mysqld
    mysql -uroot --skip-password <<EOF
alter user 'root'@'localhost' identified by '$ROOT_PASSWORD';
flush privileges;
EOF

    log_warning "MySQL 初始化完成 - 用户名: root, 密码: $ROOT_PASSWORD"
}

function remove_game_server() {
    rm -rf $NEOPLE_DIR
    rm -rf $BASE_DIR/run
    rm -rf $BASE_DIR/stop
    rm -rf $BASE_DIR/GameRestart

    log_info "Game Server卸载完成"
}

function install_game_server() {
    log_info "开始安装 Game Server..."

    cd $BASE_DIR
    tar -zxvf Game.tar.gz --no-overwrite-dir --no-same-owner

    mv ./usr/lib/* /usr/lib
    mv ./home/* /home

    chmod +x ./run
    chmod +x ./stop
    chmod +x ./GameRestart

    log_success "Game Server 安装完成"
}

function remove_game_server_install_files() {
    rm -rf $BASE_DIR/home
    rm -rf $BASE_DIR/usr
    rm -rf $BASE_DIR/init_sql

    log_info "Game Server安装文件删除完成"
}

function init_server_group() {
    local server_ip=$1
    local server_group=$2
    local mysql_ip=$3
    local mysql_port=$4

    log_info "开始初始化大区频道..."

    if [ -z "$server_ip" ]; then
        log_error "服务器IP不能为空"
        exit 1
    fi

    if [ -z "$server_group" ]; then
        log_error "大区编号不能为空"
        exit 1
    fi

    if [ -z "$mysql_ip" ]; then
        log_error "MySQL IP不能为空"
        exit 1
    fi

    if [ -z "$mysql_port" ]; then
        log_error "MySQL端口不能为空"
        exit 1
    fi

    if [ "$server_group" -ge 1 ] && [ "$server_group" -le 6 ]; then
        local SERVER_GROUP_NAME_VAR="SERVER_GROUP_NAME_$server_group"
        SERVER_GROUP_NAME=${!SERVER_GROUP_NAME_VAR}
        SERVER_GROUP_DB=$SERVER_GROUP_NAME
        log_success "当前大区编号: $server_group, 大区名称: $SERVER_GROUP_NAME"
    else
        log_error "无效的大区编号: $server_group"
        exit 1
    fi

    # channel_name=大区+频道
    local channel_name="${SERVER_GROUP_NAME}$DEFAULT_CHANNEL_NO"
    cd $NEOPLE_DIR/game
    rm -rf ./cfg/$channel_name.cfg
    cp ./cfg/server.template ./cfg/$channel_name.cfg

    cd $NEOPLE_DIR
    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/PUBLIC_IP/$server_ip/g" {} +
    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/SERVER_GROUP_NAME/$SERVER_GROUP_NAME/g" {} +
    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/SERVER_GROUP/$server_group/g" {} +
    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/CHANNEL_NO/$DEFAULT_CHANNEL_NO/g" {} +

    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/MYSQL_IP/$mysql_ip/g" {} +
    find . -type f \( -name "*.cfg" -o -name "*.tbl" \) -exec sed -i "s/MYSQL_PORT/$mysql_port/g" {} +

    log_success "${SERVER_GROUP_NAME} 频道初始化完成"
}

function init_game_database() {
    log_info "开始初始化游戏数据库..."

    local mysql_ip=$1
    local mysql_port=$2
    local mysql_user=$3
    local mysql_password=$4

    # 创建 GM 用户
    local gm_name=$(get_gm_name)
    local gm_password=$(get_gm_password)
    if [ -z "$gm_name" ] || [ -z "$gm_password" ]; then
        gm_name=$(random_string 8)
        gm_password=$(random_string 12)
        save_gm_user $gm_name $gm_password
    fi

    mysql -u"$mysql_user" -p"$mysql_password" -h"$mysql_ip" -P"$mysql_port" <<EOF
grant all privileges on *.* to 'game'@'localhost' identified by "$GAME_PASSWORD";
grant all privileges on *.* to '$gm_name'@'%' identified by "$gm_password";
flush privileges;
EOF

    log_warning "MySQL GM 用户创建完成 - 用户名: $gm_name, 密码: $gm_password"

    mysql -u"$mysql_user" -p"$mysql_password" -h"$mysql_ip" -P"$mysql_port" <<EOF
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
source $BASE_DIR/init_sql/clean.sql

-- 设置数据库连接配置
update d_taiwan.db_connect set db_ip="$mysql_ip", db_port="$mysql_port", db_passwd="$DEC_GAME_PASSWORD";

-- 自动尊10
-- alter table taiwan_cain.pvp_result modify column pvp_grade int(11) not null default 29;

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

    log_success "大区数据库初始化完成"
}

function clean_log_files() {
    cd $NEOPLE_DIR
    find . -type f \( \
        -name '*.log' \
        -o -name '*.core' \
        -o -name '*.error' \
        -o -name '*.debug' \
        -o -name '*.cri' \
        -o -name '*.init' \
        -o -name '*.money' \
        -o -name '*.history' \
        -o -name '*.snap' \
        \) -print -exec rm -f {} \;

    log_success "日志文件清理完成"
}

function backup_database() {
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

    log_success "数据库备份完成"
}

function restore_database() {
    if [ ! -f "${BASE_DIR}/dof_bakup.sql" ]; then
        log_error "dof_bakup.sql未找到在 ${BASE_DIR} 目录下"
        exit 1
    fi

    mysql -uroot -p$ROOT_PASSWORD <"${BASE_DIR}/dof_bakup.sql"
    log_success "数据库恢复完成"
}

function download_files() {
    download_mysql
    download_dofserver
}

function download_mysql() {
    if [ -f MySQL.tar.gz ]; then
        return
    fi

    cd $BASE_DIR
    wget "$MYSQL_DOWNLOAD_URL"

    if [ ! -f MySQL.tar.gz ]; then
        log_error "MySQL.tar.gz下载失败"
        exit 1
    fi

    log_info "MySQL.tar.gz下载完成"
}

function download_dofserver() {
    if [ -f Game.tar.gz ]; then
        return
    fi

    cd $BASE_DIR
    wget "$GAME_DOWNLOAD_URL"

    if [ ! -f Game.tar.gz ]; then
        log_error "Game.tar.gz下载失败"
        exit 1
    fi

    log_info "Game.tar.gz下载完成"
}

function prepare_dof() {
    if [ -f $PREPARE_DOF_FILE ]; then
        return
    fi

    clear
    log_error "=============准备安装环境,按任意键继续=============="
    read -n 1 -s -r

    check_system
    check_disk_space
    check_root_user
    check_current_dir

    performance_optimize
    create_swap
    install_yum_dependency
    download_files

    touch $PREPARE_DOF_FILE
    log_error "==========DOF安装环境初始化成功,按任意键重启=========="
    read -n 1 -s -r
    reboot
}

function install_all() {
    reinstall_database
    reinstall_game_server
}

function reinstall_game_server() {
    local server_ip=""
    read -p "输入服务器IP: " server_ip
    if [ -z "$server_ip" ]; then
        log_error "服务器IP不能为空"
        exit 1
    fi

    if ! is_valid_ip "$server_ip"; then
        log_error "服务器IP格式不正确，请输入有效的IPv4地址"
        exit 1
    fi

    remove_game_server
    install_game_server
    init_server_group "$server_ip" "$DEFAULT_SERVER_GROUP" "$DEFAULT_MYSQL_IP" "$DEFAULT_MYSQL_PORT"
    init_game_database "$DEFAULT_MYSQL_IP" "$DEFAULT_MYSQL_PORT" "root" "$ROOT_PASSWORD"

    remove_game_server_install_files

    log_success "Game Server 安装完成"
    log_warning "请及时修改 run 脚本, 避免 dp2 或者 frida 挂载失败"
    log_warning "请及时修改 run 脚本, 避免 dp2 或者 frida 挂载失败"
    log_warning "请及时修改 run 脚本, 避免 dp2 或者 frida 挂载失败"
}

function reinstall_database() {
    remove_mysql
    install_mysql
    init_database

    remove_database_install_files
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
    log_info "以上命令均可重复执行, 多次可重装"
    log_warning "———————————————其他———————————————"
    log_success "4) 清理日志文件"
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
        reinstall_game_server
        ;;
    3)
        reinstall_database
        ;;
    4)
        clean_log_files
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
        exit 1
        ;;
    esac
}

function main() {
    prepare_dof
    echo_banner
    echo_menu
    read_menu_command
}

main
