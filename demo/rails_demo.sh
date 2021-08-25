#! /bin/sh
set -x
cd /home
rails new Demo --skip-bundle --minimal
cd Demo
echo "gem 'io-console'" >> Gemfile
bundle install
IP=`ip route show dev eth0 | grep src | cut -d ' ' -f 8`
echo "Try $IP:3000 or 127.0.0.1:3000"
rails server -b 0.0.0.0
