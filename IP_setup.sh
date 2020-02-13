vi /etc/sysconfig/network-scripts/ifcfg-eth0 (Enter）

然后按i进入插入模式，开始输入内容：
DEVICE=eth0
BOOTPROTO=dhcp
ONBOOT=yes(dhcp的配置方法就是这么简单)

静态IP配置：
HWADDR=00:50:56:21:81:8E
TYPE=Ethernet
DEVICE=ens33
BOOTPROTO=static
IPADDR=192.168.1.111
GATEWAY=192.168.1.1
DNS1=192.168.1.1
DEFAULT=yes
ONBOOT=yes
