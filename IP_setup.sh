vi /etc/sysconfig/network-scripts/ifcfg-eth0 (Enter）

然后按i进入插入模式，开始输入内容：
DEVICE=eth0
BOOTPROTO=dhcp
ONBOOT=yes(dhcp的配置方法就是这么简单)

静态IP配置：
DEVICE=eth0
BOOTPROTO=static（或者是none）
IPADDR=192.168.0.1
NETMASK=255.255.255.0
GATEWAY=192.168.0.254
ONBOOT=yes
