#!/bin/sh
rpm -qa | grep yum | xargs rpm -e --nodeps #xargs是一条Unix和类Unix操作系统的常用命令。它的作用是将参数列表转换成小块分段传递给其他命令，以避免参数列表过长的问题 --nodeps  强制卸载,不管依赖性
rpm -ivh python-iniparse-0.3.1-2.1.el6.noarch.rpm
rpm -ivh yum-metadata-parser-1.1.2-16.el6.x86_64.rpm
rpm -ivh yum-3.2.29-40.el6.centos.noarch.rpm yum-plugin-fastestmirror-1.1.30-14.el6.noarch.rpm #两个要一起装，否者出现依赖性错误
\cp CentOS6-Base-163.repo /etc/yum.repos.d/
yum makecache


