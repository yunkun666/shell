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

echo 'Installation begins...'
sed -i -e 's|bind 127.0.0.1|# bind 127.0.0.1|' /etc/redis.conf;
sed -i -e 's|protected-mode yes|protected-mode no|' /etc/redis.conf;
read -p "enter passwd:" no;
passwd=$no;
sed -i -e "s|# requirepass foobared|requirepass ${passwd}|" /etc/redis.conf;
echo 'Congratulations on personalized configuration!';
sleep 1;



echo 'start redis...';
service redis restart;
echo '66666..3432y341t2';
