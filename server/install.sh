#!/bin/bash -e 
#安装curl
yum update -y && yum install curl wget -y

read -p  "intall v2ray(1) or ss(2) ?" choose1
if (( $choose1==1 ))
then
bash <(curl -s -L https://git.io/v2ray.sh)
else
#ss脚本
bash <(curl -sL https://raw.githubusercontent.com/hijkpw/scripts/master/centos_install_ss.sh)
fi
read -p "vps的构架:(1)kvm (2)OpenVZ (3)nothing" choose
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

if (( $choose == 3 ))
then
				echo "nothing to do "
fi
#关闭centos7的防火墙
systemctl stop firewalld #停止firewall

systemctl disable firewalld #禁止firewall开机启动
