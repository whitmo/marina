#!/bin/bash
#VERSION = $1
VERSION='1.2.8.6'

apt-get install -y libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make
wget http://openresty.org/download/ngx_openresty-${VERSION}.tar.gz
tar xzvf ngx_openresty-${VERSION}.tar.gz
cd ngx_openresty-${VERSION}/
./configure --with-luajit
make
make install
