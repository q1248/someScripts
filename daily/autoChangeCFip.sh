#!/bin/bash -e 
#自用的把选择的cfip倒入qv2ray的配置当中
#cd /home/aknightive/Downloads/fping-4.2/src 
#sudo  bash cf.sh
#cd ~
#sleep 5
processid=`ps -ef | grep qv2ray | grep -v grep |awk '{print $2}'|paste -d " " -s`
for var1 in $processid
do
				kill $var1
done

keyword="heroku kinTaiWan rusiacf ibm kinAmerica"
cfIP=$(sed 's/\./\\./g' ~/myping.txt)
for var in $keyword
				do
								filename=$(grep $var -B 2 ~/.config/qv2ray/connections.json | grep { | grep -oE "[a-z]*")

							  sed -r -i '11,40 s/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/'$cfIP'/g' ~/.config/qv2ray/connections/$filename.qv2ray.json

				done
