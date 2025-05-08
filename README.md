# DOF 一键端

## 概述

基于 [1995chen/dnf](https://github.com/1995chen/dnf)，去 Docker 化(手动[狗头])

默认开启希洛克大区, 目前已在 CentOS7.9 上完成搭建，其他 CentOS 版本尚未进行测试。服务器内存>=2G，太小的话我也没试过

此脚本不提供 Script.pvf、df_game_r、publickey.pem 以及 dp、frida 配套，有需要自行上传

脚本打包统一网关，配套客户端到 [1995chen/dnf](https://github.com/1995chen/dnf) 下载

## 功能特性

1. 一键搭建(2,3)
2. 安装服务端
3. 安装数据库
4. 安装统一网关
5. 备份数据库
6. 恢复数据库

## 食用指南

入口一
直接执行下面这段命令

```bash
cd /root; curl -o dof.sh https://raw.githubusercontent.com/weiguangchao/dof-install/master/dof.sh && chmod +x ./dof.sh && ./dof.sh
```

入口二
将 dof.sh, Game.tar.gz, MySQL.tar.gz 上传到/root 目录下, 执行下面这段命令

```bash
chmod +x ./dof.sh && ./dof.sh
```

启动服务端

```bash
cd /root && ./run
```

停止服务端

```bash
cd /root && ./stop
```

启动统一网关

```bash
cd /root && ./DnfGateServer
```

关闭统一网关

```bash
cd /root && ./GateStop
```

重启统一网关

```bash
cd /root && ./GateRestart
```

需要开放的端口
| 端口 | 类型 | 描述 |
| ----------- | ----------- |----------- |
| 3306 | TCP | MySQL
| 7001 | TCP | df_channel_r
| 7001 | UDP | df_channel_r
| 7200 | TCP | df_relay_r
| 7200 | UDP | df_relay_r
| 10011 | TCP | df_game_r[ch.11]
| 11011 | UDP | df_game_r[ch.11]
| 2311 | UDP | df_stun_r
| 2312 | UDP | df_stun_r
| 2313 | UDP | df_stun_r
| 7600 | TCP | 统一登录器
| 881 | TCP | 统一网关

## 免责声明

```
本软件完全免费且仅供学习交流，如作他用所承受的法律责任应由使用者本人独自承担，与作者无关（下载使用即代表你同意上述观点）。源文件发布之初安全无病毒，使用者在经任何渠道下载与使用本软件进行学习前请仔细甄别文件是否安全。

虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
```
