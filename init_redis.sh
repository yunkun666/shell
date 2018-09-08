#!/bin/bash

#yum install epel-release;
#yum install redis;

sed -i -e 's|bind 127.0.0.1|# bind 127.0.0.1|' /etc/redis.conf;
echo '启动redis';
service redis start;

