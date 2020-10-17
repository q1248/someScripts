#!/bin/bash -e 
#自用的把选择的cfip倒入qv2ray的配置当中
keyword="heroku kinTaiWan rusiacf ibm kinAmerica"
cfIP=$(sed 's/\./\\./g' ~/myping.txt)
for var in $keyword
				do
								filename=$(grep $var -B 2 ~/.config/qv2ray/connections.json | grep { | grep -oE "[a-z]*")

							  sed -r -i '11,40 s/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/'$cfIP'/g' ~/.config/qv2ray/connections/$filename.qv2ray.json

				done

