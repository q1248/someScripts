#!/bin/bash
exec 1> >(logger -s -t $(basename $0)) 2>&1
/usr/bin/fcitx5
