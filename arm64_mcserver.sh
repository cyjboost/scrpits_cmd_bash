#!/bin/bash
#进入home目录，root用户默认为/root，非root用户默认为/home/(用户名)
cd ~
#创建相关文件夹
mkdir mc
sleep 1
cd ~/mc
mkdir server
sleep 1
#下载server.jar到server文件夹
cd ~/mc/server
sleep 1
wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar
sleep 1
cd ~/mc
#下载jre
wget https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jre21.0.2-linux_aarch64.tar.gz
#解压
tar zxvf zulu21.32.17-ca-jre21.0.2-linux_aarch64.tar.gz
#删除原文件
rm zulu21.32.17-ca-jre21.0.2-linux_aarch64.tar.gz
#更改文件夹名字
mv zulu21.32.17-ca-jre21.0.2-linux_aarch64 zulu21_aarch64

#赋予运行权限
cd ./zulu21_aarch64/bin
chmod +x java

cd ~/mc/server

#同意eula
echo "eula=true" > eula.txt
#下载服务器配置文件
wget https://fastly.jsdelivr.net/gh/cyjboost/scrpits_cmd_bash@mcserver_bash/server.properties
#默认使用1536M内存，如果内存不够请打开足够的swap
echo "screen -dmS mcs ~/mc/zulu21_aarch64/bin/java -Xmn1536M -Xmx1536M -jar ~/mc/server/server.jar nogui" > ~/mc/startmcs.sh
#创建开服脚本，请先安装好screen这个软件
chmod +x ~/mc/startmcs.sh
