#!/bin/bash
mkdir -p  src/haproxy
cd src/haproxy
wget http://www.haproxy.org/download/1.7/src/haproxy-1.7.1.tar.gz
cd -

mkdir -p src/keepalived
cd src/keepalived
wget http://www.keepalived.org/software/keepalived-1.2.16.tar.gz
cd -
