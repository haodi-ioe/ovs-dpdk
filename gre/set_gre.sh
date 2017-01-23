#/bin/sh
# add ovs br

#ovs-vsctl add-br br-gre -- set bridge br-gre datapath_type=netdev


# create gre interface
min=1;
max=20;
while [ $min -le $max ]
do
    	#echo $min
	#echo gre$min
	low=1;
	high=250;
	while [ $low -le $high ]
	do
		echo gre$min.$low
		ovs-vsctl add-port br-gre gre$min.$low -- set interface gre$min.$low type=gre option:remote_ip=10.1.$min.$low
		low=`expr $low + 1`
	done

	min=`expr $min + 1`
done
