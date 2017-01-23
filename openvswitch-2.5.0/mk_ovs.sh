#!/bin/sh
./boot.sh
#./configure --with-dpdk=/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc
./configure
make & make install
