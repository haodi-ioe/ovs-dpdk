cmd_testpmd = gcc -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3  -I/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include -include /root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include/rte_config.h -O3 -W -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings  -Wl,-Map=testpmd.map,--cref -o testpmd testpmd.o parameters.o cmdline.o config.o iofwd.o macfwd.o macfwd-retry.o macswap.o flowgen.o rxonly.o txonly.o csumonly.o icmpecho.o mempool_anon.o -Wl,--no-as-needed -Wl,-export-dynamic -L/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/lib  -L/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/lib -Wl,--whole-archive -Wl,-ldpdk -Wl,--start-group -Wl,-lrt -Wl,-lm -Wl,-ldl -Wl,--end-group -Wl,--no-whole-archive 
