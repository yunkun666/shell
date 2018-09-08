#!/bin/bash
echo 'This script is suitable for centos7,'
echo 'Open remote access by default, the password is 123456,';
echo 'You can make personalized configuration by modifying /etc/redis.conf, and service redis start can restart service,';
echo 'All options can be input to Y.';
sleep 1;

echo 'Installation begins...'
yum install epel-release;
yum install redis;
echo 'Congratulations, installation is complete! Now start personalized configuration...';
sleep 1;

sed -i -e 's|bind 127.0.0.1|# bind 127.0.0.1|' /etc/redis.conf;
sed -i -e 's|bind 127.0.0.1|# bind 127.0.0.1|' /etc/redis.conf;
echo 'start redis......';
service redis restart;

