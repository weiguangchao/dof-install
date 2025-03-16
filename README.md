# DOF 一键端

## 概述

目前已在 CentOS7.9 上完成搭建，其他 CentOS 版本尚未进行测试

此脚本不提供 Script.pvf、df_game_r 以及 dp 配套，有需要自行上传

脚本内置统一网关，要使用其他网关，需自行上传

## 功能特性

1. 一键搭建(2,3)
2. 安装服务端
3. 安装数据库
4. 安装统一网关
5. 备份数据库
6. 恢复数据库

## 食用指南

服务器内存推荐>=4G，2G 内存也可以，不过有时需要多跑几次`./run`

安装一键端

```bash
cd /root && rm -rf dof.sh && curl -o dof.sh https://raw.githubusercontent.com/weiguangchao/dof-install/master/dof.sh && chmod +x ./dof.sh && ./dof.sh
```

启动

```bash
cd /root && ./run
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

## 感谢

以下排名不分先后！！！

[1995chen/dnf](https://github.com/1995chen/dnf)

[台服 dnf 吧](https://tieba.baidu.com/f?kw=台服dnf)

## 免责声明

```bash
本软件完全免费且仅供学习交流，如作他用所承受的法律责任应由使用者本人独自承担，与作者无关（下载使用即代表你同意上述观点）。源文件发布之初安全无病毒，使用者在经任何渠道下载与使用本软件进行学习前请仔细甄别文件是否安全。

虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
虽然支持外网，但是千万别拿来开服。只能拿来学习使用!!!
```
