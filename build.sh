#!/bin/bash

echo "开始打包安装文件: Game.tar.gz、MySQL.tar.gz"

rm -rf Game.tar.gz MySQL.tar.gz

COPYFILE_DISABLE=1 tar -cvzf Game.tar.gz -C Game . 

COPYFILE_DISABLE=1 tar -cvzf MySQL.tar.gz -C MySQL . 

echo "打包完成: Game.tar.gz、MySQL.tar.gz"
