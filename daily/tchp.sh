#!/bin/bash
exec 2>&1
echo "start up!"
exec 1>/dev/null
kcptun-client -c /home/aknightive/mykcptun.json --quiet
