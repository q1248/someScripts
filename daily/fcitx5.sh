#!/bin/bash
exec 1> >(logger -s -t $(basename $0)) 2>&1
until /usr/bin/fcitx5;do
       echo "fcitx5 failed with $?, restart in 5s"
       sleep 5
done
