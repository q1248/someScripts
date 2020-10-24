#!/bin/bash -e 
#安装curl
yum update -y && yum install curl wget -y

#backtest
wget https://raw.githubusercontent.com/q1248/someScripts/master/server/install.sh

#ss脚本
bash <(curl -sL https://raw.githubusercontent.com/hijkpw/scripts/master/centos_install_ss.sh)

read -p "vps的构架:(1)kvm (2)OpenVZ" choose
if (( $choose == 1 ))
then
#安装bbr加速脚本
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" 
chmod +x tcp.sh  
./tcp.sh
else
wget https://raw.githubusercontent.com/kuoruan/shell-scripts/master/ovz-bbr/ovz-bbr-installer.sh
chmod +x ovz-bbr-installer.sh
./ovz-bbr-installer.sh
fi
#关闭centos7的防火墙
systemctl stop firewalld.service #停止firewall

systemctl disable firewalld.service #禁止firewall开机启动
