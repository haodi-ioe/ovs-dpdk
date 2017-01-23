#! /bin/bash
#Load UIO Drivers

# Change DPDK_HOME for your system
DPDK_HOME="/root/dpdk/dpdk-2.2.0"
echo $DPDK_HOME
#Load UIO Drivers
modprobe uio
#insmod $DPDK_HOME/x86_64-ivshmem-linuxapp-gcc/kmod/igb_uio.ko
insmod $DPDK_HOME/x86_64-native-linuxapp-gcc/kmod/igb_uio.ko
#Install eventfd_link
insmod $DPDK_HOME/lib/librte_vhost/eventfd_link/eventfd_link.ko


#Mount hugepages
#mount -t hugetlbfs -o pagesize=1G none /dev/hugepages
umount /dev/hugepages
#mount -t hugetlbfs -o pagesize=256M none /dev/hugepages
echo 256 > /proc/sys/vm/nr_hugepages
mount -t hugetlbfs none /dev/hugepages

#Unbind interfaces
#The interface names may differ and this example uses my systems interfaces. 

$DPDK_HOME/tools/dpdk_nic_bind.py -u 02:00.0
$DPDK_HOME/tools/dpdk_nic_bind.py -u 03:00.0
$DPDK_HOME/tools/dpdk_nic_bind.py --bind=igb_uio 0000:02:00.0
$DPDK_HOME/tools/dpdk_nic_bind.py --bind=igb_uio 0000:03:00.0
$DPDK_HOME/tools/dpdk_nic_bind.py --status
#There may 1G interfaces that are DPDK-enabled and are available on some of today's laptops. Give it a try.

#Restart ovs-vswitchd with DPDK

#Make sure the dpdk options are first in the list and terminated with the bare double dash.

killall ovs-vswitchd
#ovs-vswitchd --dpdk -c 0x0FF8 -n 4 --socket-mem 1024,0 -- unix:/var/run/openvswitch/db.sock -vconsole:emer -vsyslog:err -vfile:info --mlockall --no-chdir --log-fi#le=/var/log/openvswitch/ovs-vswitchd.log --pidfile=/var/run/openvswitch/ovs-vswitchd.pid --detach --monitor

ovs-vswitchd --dpdk -c 2 -n 4 --socket-mem 128,0 -- unix:/usr/local/var/run/openvswitch/db.sock -vconsole:emer -vsyslog:err -vfile:info --mlockall --no-chdir --log-file=/usr/local/var/log/openvswitch/ovs-vswitchd.log --pidfile=/usr/local/var/run/openvswitch/ovs-vswitchd.pid --detach --monitor

#Configure a Two Port Bridge

#Once ovs-vswitchd is enabled with DPDK and running we can build a switch br0 and add ports dpdk0 to dpdk1.

ovs-vsctl del-br ovsbr0
ovs-vsctl del-br br0
ovs-vsctl add-br ovsbr0 -- set bridge ovsbr0 datapath_type=netdev
ovs-vsctl add-port ovsbr0 dpdk0 -- set Interface dpdk0 type=dpdk
ovs-vsctl add-port ovsbr0 dpdk1 -- set Interface dpdk1 type=dpdk
ovs-vsctl show

$DPDK_HOME/tools/dpdk_nic_bind.py --status
#Traffic now should flow and the system is ready for testing VM packet processing. Initial performance looks promising.
