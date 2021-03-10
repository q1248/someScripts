#!/bin/bash -e
echo "显示当前目录"
pwd
echo "切换到上一级目录"
cd ..
pwd
cd ~/github/someScripts
echo "清屏"
sleep 3
clear
echo "显示网络配置:"
ifconfig

sleep 5
echo "创建文件'myfile'"
touch myfile
ls -l myfile
echo "删除刚才创建的文件"
rm -rf myfile
ls -a
echo "创建一个'new_dir'目录"
mkdir new_dir
echo "删除刚才创建的目录"
rmdir new_dir
ls -a 
echo "复制'readme.md'到上一级目录"
cp ./readme.md ..
ls -a ../
echo "移动刚才复制的文件到当前文件夹下并改名为read"
mv ../readme.md ./read
ls -l read
echo "查看一个文件的内容"
cat ./.git/config

