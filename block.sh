sudo apt update
clear
sudo apt install screen
screen -R yes

sudo apt-get install build-essential automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git
git clone https://github.com/JayDDee/cpuminer-opt.git && cd cpuminer-opt && ./build.sh && ./cpuminer --algo power2b -o stratum+tcp://blockmasters.co:4459 -u TP7jVMfWwALwX2xBHkw6fA3qJWxiKyQkhz -p c=TRX
