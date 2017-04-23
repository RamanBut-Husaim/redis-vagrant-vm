#!/bin/bash

apt-get update > /dev/null

apt-get -y install make

mkdir /opt/redis

cd /opt/redis

wget -q http://download.redis.io/redis-stable.tar.gz

tar xvzf redis-stable.tar.gz

cd redis-stable

make
make install

rm /etc/redis.conf
mkdir -p /etc/redis
mkdir -p /var/redis/storage
chmod -R 777 /var/redis
useradd redis

cp -u /vagrant/redis.conf /etc/redis/6379.conf
cp -u /vagrant/redis.init.d /etc/init.d/redis_6379

update-rc.d redis_6379 defaults

chmod a+x /etc/init.d/redis_6379
/etc/init.d/redis_6379 start
