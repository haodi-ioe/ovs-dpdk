cmd_ixgbe_x550.o = gcc -Wp,-MD,./.ixgbe_x550.o.d.tmp -m64 -pthread  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3  -I/root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include -include /root/dpdk/dpdk-2.2.0/x86_64-native-linuxapp-gcc/include/rte_config.h -O3 -W -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wno-deprecated -Wno-unused-but-set-variable -Wno-maybe-uninitialized -Wno-unused-parameter -Wno-unused-value -Wno-strict-aliasing -Wno-format-extra-args  -o ixgbe_x550.o -c /root/dpdk/dpdk-2.2.0/drivers/net/ixgbe/base/ixgbe_x550.c 
