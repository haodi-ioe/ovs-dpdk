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
	{ 0x35b6b772, __VMLINUX_SYMBOL_STR(param_ops_charp) },
	{ 0x2cb61da5, __VMLINUX_SYMBOL_STR(pci_unregister_driver) },
	{ 0x99487493, __VMLINUX_SYMBOL_STR(__pci_register_driver) },
	{ 0xe2d5255a, __VMLINUX_SYMBOL_STR(strcmp) },
	{ 0xc140ad72, __VMLINUX_SYMBOL_STR(__dynamic_dev_dbg) },
	{ 0x4cce8b07, __VMLINUX_SYMBOL_STR(_dev_info) },
	{ 0x9c696a15, __VMLINUX_SYMBOL_STR(__uio_register_device) },
	{ 0x643d15bc, __VMLINUX_SYMBOL_STR(sysfs_create_group) },
	{ 0xac1adf42, __VMLINUX_SYMBOL_STR(pci_enable_msix) },
	{ 0x7a7f7d68, __VMLINUX_SYMBOL_STR(dma_supported) },
	{ 0x42c8de35, __VMLINUX_SYMBOL_STR(ioremap_nocache) },
	{ 0x59d5a7f7, __VMLINUX_SYMBOL_STR(dma_set_mask) },
	{ 0xbe4a1520, __VMLINUX_SYMBOL_STR(pci_set_master) },
	{ 0xd795224, __VMLINUX_SYMBOL_STR(dev_err) },
	{ 0xc3fc2f, __VMLINUX_SYMBOL_STR(pci_request_regions) },
	{ 0x46734db7, __VMLINUX_SYMBOL_STR(pci_enable_device) },
	{ 0x41ec4c1a, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0x98ab5c8d, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0x72c53ff3, __VMLINUX_SYMBOL_STR(pci_check_and_mask_intx) },
	{ 0x9610eab4, __VMLINUX_SYMBOL_STR(pci_intx) },
	{ 0x46ecdf92, __VMLINUX_SYMBOL_STR(pci_cfg_access_unlock) },
	{ 0xd23a2d69, __VMLINUX_SYMBOL_STR(pci_cfg_access_lock) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x58ecf574, __VMLINUX_SYMBOL_STR(pci_disable_msix) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0xc483a55a, __VMLINUX_SYMBOL_STR(dev_set_drvdata) },
	{ 0x1c3e657e, __VMLINUX_SYMBOL_STR(pci_disable_device) },
	{ 0xcf73ce21, __VMLINUX_SYMBOL_STR(pci_release_regions) },
	{ 0x191d18b7, __VMLINUX_SYMBOL_STR(uio_unregister_device) },
	{ 0xcbc31bee, __VMLINUX_SYMBOL_STR(sysfs_remove_group) },
	{ 0x7cf5b2b3, __VMLINUX_SYMBOL_STR(dev_get_drvdata) },
	{ 0xedc03953, __VMLINUX_SYMBOL_STR(iounmap) },
	{ 0x28318305, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0x8f1fb6c, __VMLINUX_SYMBOL_STR(dev_num_vf) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x1a80987d, __VMLINUX_SYMBOL_STR(pci_enable_sriov) },
	{ 0x547ca86d, __VMLINUX_SYMBOL_STR(pci_disable_sriov) },
	{ 0x15b2fb0d, __VMLINUX_SYMBOL_STR(pci_num_vf) },
	{ 0x60ea2d6, __VMLINUX_SYMBOL_STR(kstrtoull) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=uio";


MODULE_INFO(srcversion, "815E3B62087E38ECD9EBC54");
MODULE_INFO(rhelversion, "7.2");
