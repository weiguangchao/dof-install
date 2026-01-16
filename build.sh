#!/bin/bash

echo "开始打包安装文件: Game.tar.gz、MySQL.tar.gz"

# 清理旧的压缩包
rm -rf Game.tar.gz MySQL.tar.gz

# 清理 macOS 特殊文件
echo "清理 macOS 特殊文件..."
find Game -name ".DS_Store" -type f -delete 2>/dev/null || true
find MySQL -name ".DS_Store" -type f -delete 2>/dev/null || true
find Game -name "._*" -type f -delete 2>/dev/null || true
find MySQL -name "._*" -type f -delete 2>/dev/null || true

# 打包 Game 目录
echo "打包 Game.tar.gz..."
COPYFILE_DISABLE=1 tar --no-xattrs --no-mac-metadata -czf Game.tar.gz -C Game .

# 打包 MySQL 目录
echo "打包 MySQL.tar.gz..."
COPYFILE_DISABLE=1 tar --no-xattrs --no-mac-metadata -czf MySQL.tar.gz -C MySQL .

echo "打包完成: Game.tar.gz、MySQL.tar.gz"
echo "文件大小:"
ls -lh Game.tar.gz MySQL.tar.gz
