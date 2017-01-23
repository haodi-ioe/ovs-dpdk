#/bin/sh
export RTE_SDK=/root/work/ovs/dpdk-2.2.0
#export RTE_TARGET=x86_64-native-linuxapp-gcc
export RTE_TARGET=x86_64-ivshmem-linuxapp-gcc
echo "set env OK...."
make install T=$RTE_TARGET  DESTDIR=/usr/src/dpdk
export DPDK_BUILD=/root/work/ovs/dpdk-2.2.0
