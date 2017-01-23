#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x28950ef1, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0xa1012e43, __VMLINUX_SYMBOL_STR(misc_deregister) },
	{ 0xf23b2e74, __VMLINUX_SYMBOL_STR(misc_register) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x61aa871a, __VMLINUX_SYMBOL_STR(filp_close) },
	{ 0x76bcc79d, __VMLINUX_SYMBOL_STR(fput) },
	{ 0xb8c7ff88, __VMLINUX_SYMBOL_STR(current_task) },
	{ 0x8c9e0b6e, __VMLINUX_SYMBOL_STR(__put_task_struct) },
	{ 0xa90886d5, __VMLINUX_SYMBOL_STR(fd_install) },
	{ 0xa843805a, __VMLINUX_SYMBOL_STR(get_unused_fd_flags) },
	{ 0xfc876d2b, __VMLINUX_SYMBOL_STR(get_pid_task) },
	{ 0x49a6b139, __VMLINUX_SYMBOL_STR(find_vpid) },
	{ 0x77e2f33, __VMLINUX_SYMBOL_STR(_copy_from_user) },
	{ 0xda3e43d1, __VMLINUX_SYMBOL_STR(_raw_spin_unlock) },
	{ 0xd52bf1ce, __VMLINUX_SYMBOL_STR(_raw_spin_lock) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "C4C50F496CF5ED3BC0DAC7E");
MODULE_INFO(rhelversion, "7.2");
