cmd_vhost_user/fd_man.o = gcc -Wp,-MD,vhost_user/.fd_man.o.d.tmp -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3  -I/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include -include /root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include/rte_config.h -W -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -I/root/dpdk/dpdk-2.2.0/lib/librte_vhost -O3 -D_FILE_OFFSET_BITS=64 -I vhost_user   -o vhost_user/fd_man.o -c /root/dpdk/dpdk-2.2.0/lib/librte_vhost/vhost_user/fd_man.c 