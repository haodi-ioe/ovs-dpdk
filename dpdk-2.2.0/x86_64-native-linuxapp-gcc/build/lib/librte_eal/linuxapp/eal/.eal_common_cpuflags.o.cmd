cmd_eal_common_cpuflags.o = gcc -Wp,-MD,./.eal_common_cpuflags.o.d.tmp -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3  -I/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include -include /root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include/rte_config.h -I/root/dpdk/dpdk-2.2.0/lib/librte_eal/linuxapp/eal/include -I/root/dpdk/dpdk-2.2.0/lib/librte_eal/common -I/root/dpdk/dpdk-2.2.0/lib/librte_eal/common/include -I/root/dpdk/dpdk-2.2.0/lib/librte_ring -I/root/dpdk/dpdk-2.2.0/lib/librte_mempool -I/root/dpdk/dpdk-2.2.0/lib/librte_ivshmem -W -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -O3   -o eal_common_cpuflags.o -c /root/dpdk/dpdk-2.2.0/lib/librte_eal/common/eal_common_cpuflags.c 
