#!/bin/bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

REQUIRED_FILES=(
    Game/TeaEncrypt
    Game/run
    Game/stop
    Game/GameRestart
    Game/usr/lib/libnxencryption.so
    Game/usr/lib/channel_hook.so
    Game/usr/lib/libhook.so
    Game/usr/lib/bridge_hook.so
    Game/home/neople/auction/df_auction_r
    Game/home/neople/bridge/df_bridge_r
    Game/home/neople/channel/df_channel_r
    Game/home/neople/community/df_community_r
    Game/home/neople/coserver/df_coserver_r
    Game/home/neople/dbmw_guild/df_dbmw_r
    Game/home/neople/dbmw_mnt/df_dbmw_r
    Game/home/neople/dbmw_stat/df_dbmw_r
    Game/home/neople/guild/df_guild_r
    Game/home/neople/manager/df_manager_r
    Game/home/neople/monitor/df_monitor_r
    Game/home/neople/point/df_point_r
    Game/home/neople/relay/df_relay_r
    Game/home/neople/statics/df_statics_r
    Game/home/neople/stun/df_stun_r
    Game/home/neople/secsvr/gunnersvr/gunnersvr
    Game/home/neople/secsvr/zergsvr/zergsvr
    Game/home/neople/secsvr/zergsvr/secagent
    Game/home/neople/game/3N.mhe
    Game/home/neople/game/DNFAntiCpX.hsb
    Game/home/neople/game/HSPub.key
    Game/home/neople/game/libtss_sdk.so.1.0.394
    MySQL/my.cnf
    MySQL/mysql-community-client-5.7.44-1.el7.x86_64.rpm
    MySQL/mysql-community-common-5.7.44-1.el7.x86_64.rpm
    MySQL/mysql-community-libs-5.7.44-1.el7.x86_64.rpm
    MySQL/mysql-community-server-5.7.44-1.el7.x86_64.rpm
)

function check_required_files() {
    local missing=0
    local file
    for file in "${REQUIRED_FILES[@]}"; do
        if [ ! -e "$file" ]; then
            echo "缺少文件: $file"
            missing=1
        fi
    done
    if [ "$missing" -ne 0 ]; then
        echo "打包中止: gitignore 中的二进制未准备齐全"
        exit 1
    fi
}

function clean_macos_junk() {
    echo "清理 macOS 特殊文件..."
    find Game MySQL -name ".DS_Store" -type f -delete 2>/dev/null || true
    find Game MySQL -name "._*" -type f -delete 2>/dev/null || true
}

function pack_dir() {
    local src="$1"
    local dest="$2"
    export COPYFILE_DISABLE=1
    if tar --help 2>&1 | grep -q -- '--no-mac-metadata'; then
        tar --no-xattrs --no-mac-metadata -czf "$dest" -C "$src" .
    else
        tar --no-xattrs -czf "$dest" -C "$src" .
    fi
}

function write_checksums() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum Game.tar.gz MySQL.tar.gz dof.sh >SHA256SUMS
    else
        shasum -a 256 Game.tar.gz MySQL.tar.gz dof.sh >SHA256SUMS
    fi
}

echo "开始打包安装文件: Game.tar.gz、MySQL.tar.gz"
check_required_files
rm -f Game.tar.gz MySQL.tar.gz SHA256SUMS
clean_macos_junk

echo "打包 Game.tar.gz..."
pack_dir Game Game.tar.gz

echo "打包 MySQL.tar.gz..."
pack_dir MySQL MySQL.tar.gz

write_checksums

echo "打包完成: Game.tar.gz、MySQL.tar.gz"
echo "文件大小:"
ls -lh Game.tar.gz MySQL.tar.gz
echo "SHA256:"
cat SHA256SUMS
