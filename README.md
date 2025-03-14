# DOF 一键端

## 概述

目前已在 CentOS7.9 上完成搭建，其他 CentOS 版本尚未进行测试

自带 85 清风 1031，`publickey.pem`适配狗哥简易登录器

## 功能特性

1. 一键搭建, 多次可重装
2. 数据库清档
3. 重装服务端
4. 备份数据库
5. 恢复数据库

## 食用指南

### 安装服务端

打包服务端，会自动生成`MySQL.tar.gz`、`DnfServer.tar.gz`

```bash
chmod +x build; ./build
```

将`MySQL.tar.gz`、`DnfServer.tar.gz`、`MySQL-client-5.5.62-1.el6.x86_64.rpm`、`MySQL-server-5.5.62-1.el6.x86_64.rpm`、`dof`上传到`/root`目录下

执行安装脚本

```bash
chmod +x dof; ./dof
```

### 启动 MySQL

```bash
./dof mysql_start
```

### 停止 MySQL

```bash
./dof mysql_stop
```

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
