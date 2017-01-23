#/bin/sh
cd ~/dpdk/dpdk-2.2.0
modprobe uio
insmod lib/librte_vhost/eventfd_link/eventfd_link.ko                                                                                            
insmod x86_64-native-linuxapp-gcc/kmod/igb_uio.ko                                                       
lsmod                                                                     
./tools/dpdk_nic_bind.py --status                     
./tools/dpdk_nic_bind.py --force --bind=igb_uio ens33                     
./tools/dpdk_nic_bind.py --force --bind=igb_uio ens34 
./tools/dpdk_nic_bind.py --status

