
# Install

## Install Squid

```bash
yum install squid

systemctl enable squid
systemctl start squid
```

## Install Stunnel Server

```bash
yum install stunnel

cd /etc/stunnel/
openssl req -new -x509 -days 365 -nodes -out stunnel.pem -keyout stunnel.pem
# Country Name (2 letter code) [XX]:US
# State or Province Name (full name) []:Illinois
# Locality Name (eg, city) [Default City]:Chicago
# Organization Name (eg, company) [Default Company Ltd]:EXH Company LTD.
# Organizational Unit Name (eg, section) []:Information Technology
# Common Name (eg, your name or your server's hostname) []:
# Email Address []:
# Please enter the following 'extra' attributes to be sent with your certificate request A challenge password []:
# An optional company name []:Example Company LTD.

# 生成Diffie-Hellman部分
openssl gendh 512>> stunnel.pem
```

**config**

vi /etc/stunnel/stunnel.conf

```ini
cert = /etc/stunnel/stunnel.pem
CAfile = /etc/stunnel/stunnel.pem
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

pid = /tmp/stunnel.pid
verify = 3

setuid = root
setgid = root

compression = deflate
delay = no
sslVersion = TLSv1
fips=no

debug = 7
syslog = no
output = /var/log/stunnel.log

[sproxy]
accept = 45267
connect = 127.0.0.1:3128

```

**firewall setting**
```bash
firewall-cmd --permanent --add-port=45267/tcp
firewall-cmd --reload
```

**service**

vi /etc/systemd/system/stunnel.service

```ini
[Unit]
Description=SSL tunnel for network daemons
After=network.target
After=syslog.target

[Install]
WantedBy=multi-user.target
Alias=stunnel.target

[Service]
Type=forking
ExecStart=/usr/bin/stunnel /etc/stunnel/stunnel.conf
ExecStop=/usr/bin/killall -9 stunnel

# Give up if ping don't get an answer
TimeoutSec=600

Restart=always
PrivateTmp=false
```

```bash
systemctl enable stunnel
systemctl start stunnel
```

## Install Stunnel Client

```bash
sudo apt install stunnel
```

copy `stunnel.pem` from server

vi /etc/stunnel/stunnel.conf

```ini
cert = /etc/stunnel/stunnel.pem
CAfile = /etc/stunnel/stunnel.pem
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

pid = /tmp/stunnel.pid
verify = 2

client=yes
compression = deflate
ciphers = AES256-SHA
delay = no
failover = prio
sslVersion = TLSv1
fips = no

output = /var/log/stunnel.log

[sproxy]
accept = 0.0.0.0:7070
connect = $IP:45267
```

**service**

same with the server side
