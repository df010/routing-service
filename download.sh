#!/bin/bash
mkdir -p  src/haproxy
cd src/haproxy
#wget http://www.haproxy.org/download/1.7/src/haproxy-1.7.1.tar.gz
cd -

mkdir -p src/keepalived
cd src/keepalived
#wget http://www.keepalived.org/software/keepalived-1.2.16.tar.gz
cd -


mkdir -p src/nginx
cd src/nginx
wget -O nginx-1.11.7.tar.gz  https://github.com/nginx/nginx/archive/release-1.11.7.tar.gz
wget -O headers-more-nginx-module-0.30.tar.gz https://github.com/openresty/headers-more-nginx-module/archive/v0.30.tar.gz
wget -O pcre-8.38.tar.gz https://nchc.dl.sourceforge.net/project/pcre/pcre/8.38/pcre-8.38.tar.gz
cd -
