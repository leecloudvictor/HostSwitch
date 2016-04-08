#!/usr/bin/env bash

# 默认 host name
host_name=`uname -n`

# 设置 hosts 文件中的 host name
sed -i "s/127.0.1.1       ${host_name}  # 主机名称/127.0.1.1       ubuntu  # 主机名称/g" hosts
sed -i "s/127.0.1.1       ${host_name}  # 主机名称/127.0.1.1       ubuntu  # 主机名称/g" hosts.develop
sed -i "s/127.0.1.1       ${host_name}  # 主机名称/127.0.1.1       ubuntu  # 主机名称/g" hosts.google
sed -i "s/127.0.1.1       ${host_name}  # 主机名称/127.0.1.1       ubuntu  # 主机名称/g" hosts.original
sed -i "s/127.0.1.1       ${host_name}  # 主机名称/127.0.1.1       ubuntu  # 主机名称/g" hosts.work
