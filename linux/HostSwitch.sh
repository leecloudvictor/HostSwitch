#!/usr/bin/env bash
#备份当前hosts文件
sudo cp -f /etc/hosts /etc/hosts.bak

echo '''
*****************
* HOSTS 切换器  *
* 1 -- 初始环境 *
* 2 -- 科学上网 *
* 3 -- 工作环境 *
* 4 -- 开发环境 *
*****************

请输入host环境编号：
'''

read host_type

case ${host_type} in
1) echo "环境已切换至[$host_type]初始环境"
   sudo cp -f `pwd`/hosts.original /etc/hosts;;
2) echo "环境已切换至[$host_type]科学上网"
   sudo cp -f `pwd`/hosts.google /etc/hosts;;
3) echo "环境已切换至[$host_type]工作环境"
   sudo cp -f `pwd`/hosts.work /etc/hosts;;
4) echo "环境已切换至[$host_type]开发环境"
   sudo cp -f `pwd`/hosts.develop /etc/hosts;;
*) echo "环境编号[$host_type]不存在";;
esac

#清空DNS缓存
sudo /etc/init.d/dns-clean start
