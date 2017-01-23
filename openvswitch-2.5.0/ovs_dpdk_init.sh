#!/bin/bash

#pkill -9 ovs
rm -rf /usr/local/var/run/openvswitch
rm -rf /usr/local/etc/openvswitch/
rm -f /usr/local/etc/openvswitch/conf.db
mkdir -p /usr/local/etc/openvswitch
mkdir -p /usr/local/var/run/openvswitch

ovsdb-tool create /usr/local/etc/openvswitch/conf.db ./vswitchd/vswitch.ovsschema

#/usr/lib/modules/3.10.0-327.el7.x86_64/kernel/net/openvswitch/openvswitch.ko
rmmod openvswitch
modprobe openvswitch

rm /usr/local/share/openvswitch/vswitch.ovsshcema
cp /usr/local/etc/openvswitch/conf.db /usr/local/share/openvswitch/vswitch.ovsshcema

killall ovsdb-server
ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock --remote=db:Open_vSwitch,Open_vSwitch,manager_options --pidfile --detach --log-file

ovs-vsctl --no-wait init
echo "start ovsdb-server ok..."


