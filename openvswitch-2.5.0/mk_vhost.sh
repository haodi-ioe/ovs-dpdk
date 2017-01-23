#!/bin/sh
./configure --with-dpdk=/root/dpdk/dpdk-2.2.0/x86_64-ivshmem-linuxapp-gcc
make & make install
