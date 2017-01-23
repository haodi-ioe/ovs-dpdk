#/bin/sh
export RTE_SDK=/root/dpdk/dpdk-2.2.0
export RTE_TARGET=x86_64-native-linuxapp-gcc
echo "set env OK...."
make
