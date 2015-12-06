## WIN7环境下，设置笔记本WIFI 初次配置

一、修改配置文件（WIFI配置.bat）
netsh wlan set hostednetwork mode=allow ssid=[WIFI名称] key=[WIFI密码]

二、启动配置文件（WIFI配置.bat）


开启成功后，网络连接中会多出一个网卡为“Microsoft Virtual WiFi Miniport Adapter”的无线连接2，为方便起见，将其重命名为虚拟WiFi。


三、设置共享

有线上网方式：

本地连接 >> 属性 >> 共享 >> 勾选 允许其他网络用户通过此计算机的 Internet 连接来连接(N) >> 家庭网络连接(H) 选择 虚拟WiFi

无线上网方式：

无线网络连接 >> 属性 >> 共享 >> 勾选 允许其他网络用户通过此计算机的 Internet 连接来连接(N) >> 家庭网络连接(H) 选择 虚拟WiFi


初次配置完成以后，只需以下操作控制WIFI开启和关闭即可

开启服务（WIFI开启.bat）

关闭服务（WIFI关闭.bat）


注意：

以上所有批处理文件运行，均需要以管理员身份运行
