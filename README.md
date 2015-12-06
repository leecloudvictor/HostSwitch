## host文件配置说明

[HostSwitch 环境切换]

用于开发工作中的环境切换，亮点：科学上网

根据需要先配置以下host文件
```
hosts               当前环境
hosts.develop       开发环境
hosts.google        科学上网
hosts.original      原始环境
hosts.work          工作环境
```
都是在这几个环境中切换


## Windows环境初次使用说明

将全部hosst文件拷贝至 C:\Windows\System32\drivers\etc\

C:\Windows\System32\drivers\etc\hosts

手动备份hosts文件

C:\Windows\System32\drivers\etc\hosts.bak


hosts 和 hosts.bak 两个文件

需要管理员权限，给Users组添加完全控制权限（仅仅编辑权限还不够）

启动HostSwitch.bat


## Linux环境初次使用说明

hosts文件保留前几行如下（注意替换主机名称）：
```
127.0.0.1       localhost  # 本地地址（ipv4）
::1             localhost  # 本地地址（ipv6）
127.0.1.1       ubuntu  # 主机名称
255.255.255.255	broadcasthost
```

注意 127.0.0.1 与 127.0.1.1 的区别

否则执行sudo命令会报错(虽然不影响执行结果)
```
sudo：无法解析主机：ubuntu
```

将此目录放在home目录即可，执行以下命令
```
$ chmod +x HostSwitch.sh
$ ./HostSwitch.sh
```
