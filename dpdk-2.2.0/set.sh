#/bin/sh
export RTE_SDK=/root/dpdk/dpdk-2.2.0
export RTE_TARGET=x86_64-native-linuxapp-gcc
echo "set env OK...."
#make install T=$RTE_TARGET DESTDIR=install
make install T=$RTE_TARGET
export DPDK_BUILD=/root/dpdk/dpdk-2.2.0
