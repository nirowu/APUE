/*
 * Lab problem set for UNIX programming course
 * by Chun-Ying Huang <chuang@cs.nctu.edu.tw>
 * License: GPLv2
 */
#include <linux/module.h>	// included for all kernel modules
#include <linux/kernel.h>	// included for KERN_INFO
#include <linux/init.h>		// included for __init and __exit macros
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/errno.h>
#include <linux/sched.h>	// task_struct requried for current_uid()
#include <linux/cred.h>		// for current_uid();
#include <linux/slab.h>		// for kmalloc/kfree
#include <linux/uaccess.h>	// copy_to_user
#include <linux/string.h>
#include <linux/device.h>
#include <linux/cdev.h>
#include <asm/io.h>
#include <linux/mm.h>
#include <linux/highmem.h>
#include "kshram.h"

static dev_t devnum;
// static struct cdev c_dev;
struct class *clazz;
struct cdev **c_devs;
// dev_t devnum;

static int hellomod_dev_open(struct inode *i, struct file *f) {
	printk(KERN_INFO "kshram: device opened.\n");
	return 0;
}

static int hellomod_dev_close(struct inode *i, struct file *f) {
	printk(KERN_INFO "kshram: device closed.\n");
	return 0;
}

static ssize_t hellomod_dev_read(struct file *f, char __user *buf, size_t len, loff_t *off) {
	printk(KERN_INFO "kshram: read %zu bytes @ %llu.\n", len, *off);
	return len;
}

static ssize_t hellomod_dev_write(struct file *f, const char __user *buf, size_t len, loff_t *off) {
	printk(KERN_INFO "kshram: write %zu bytes @ %llu.\n", len, *off);
	return len;
}

// static long hellomod_dev_ioctl(struct file *fp, unsigned int cmd, unsigned long arg) {
// 	printk(KERN_INFO "hellomod: ioctl cmd=%u arg=%lu.\n", cmd, arg);
// 	return 0;
// }

struct hellomod_dev {
    struct cdev cdev;
    int ref_count;
    size_t size;
    void *mem;
};

#define DEVICES_NUM 8
#define DEVICE_NAME "kshram"

struct my_dev_data {
    char *data;
    size_t size;
};

static struct my_dev_data dev_data[DEVICES_NUM];

static long hellomod_dev_ioctl(struct file *file, unsigned int ioctl_num, unsigned long ioctl_param)
{
    long ret = 0;
    // struct hellomod_dev *dev = kzalloc(sizeof(struct hellomod_dev), GFP_KERNEL);
    const char *filename = file->f_path.dentry->d_name.name;
    char *filename_without_const = (char *)filename;
    int last_char = filename_without_const[strlen(filename_without_const) - 1] - '0';
    // dev = file->private_data;

    if (ioctl_num == KSHRAM_GETSLOTS) {
        ret = DEVICES_NUM;
        return ret;
    }
    else if (ioctl_num == KSHRAM_GETSIZE) {
        ret = dev_data[last_char].size;
        return dev_data[last_char].size;
    }
    else if (ioctl_num == KSHRAM_SETSIZE) {
        dev_data[last_char].data = krealloc(dev_data[last_char].data, ioctl_param, GFP_KERNEL);
        dev_data[last_char].size = ioctl_param;
    }
    else {
        ret = -EINVAL;
    }

    return ret;
}


static int hellomod_dev_mmap(struct file *file, struct vm_area_struct *vma) {


    // allocate memory using kmalloc
    const char *filename = file->f_path.dentry->d_name.name;
    char *filename_without_const = (char *)filename;
    int last_char = filename_without_const[strlen(filename_without_const) - 1] - '0';


    unsigned long offset, pfn_start, virt_start, size;
    int ret = 0;

    offset = vma->vm_pgoff << PAGE_SHIFT;
    pfn_start = (virt_to_phys(dev_data[last_char].data) >> PAGE_SHIFT) + vma->vm_pgoff;
    virt_start = (unsigned long)dev_data[last_char].data + offset;
    size = vma->vm_end - vma->vm_start;
    
    printk(KERN_INFO "kshram_dev_mmap %d\n", last_char);
  
    ret = remap_pfn_range(vma, vma->vm_start, pfn_start, size, vma->vm_page_prot);


    return ret;
}


static const struct file_operations hellomod_dev_fops = {
	.owner = THIS_MODULE,
	.open = hellomod_dev_open,
	.read = hellomod_dev_read,
	.write = hellomod_dev_write,
	.unlocked_ioctl = hellomod_dev_ioctl,
	.release = hellomod_dev_close,
    .mmap = hellomod_dev_mmap
};

static int hellomod_proc_read(struct seq_file *m, void *v) {

    int i;
    for (i = 0; i < DEVICES_NUM; i++) {
        seq_printf(m, "%02d: %lu\n", i, (unsigned long) PAGE_SIZE);
    }
    return 0;
}

static int hellomod_proc_open(struct inode *inode, struct file *file) {
	return single_open(file, hellomod_proc_read, NULL);
}

static const struct proc_ops hellomod_proc_fops = {
	.proc_open = hellomod_proc_open,
	.proc_read = seq_read,
	.proc_lseek = seq_lseek,
	.proc_release = single_release,
};



static char *hellomod_devnode(const struct device *dev, umode_t *mode) {
	if(mode == NULL) return NULL;
	*mode = 0666;
	return NULL;
}



static int __init hellomod_init(void)
{
    int i;
    
    // struct class *clazz;
    struct device *dev;
    // struct cdev *c_dev;
    

    // create char dev
    if (alloc_chrdev_region(&devnum, 0, DEVICES_NUM, DEVICE_NAME) < 0)
        return -1;

    if ((clazz = class_create(THIS_MODULE, "upclass")) == NULL)
        goto release_region;

    clazz->devnode = hellomod_devnode;

    c_devs = kzalloc(sizeof(struct cdev *) * DEVICES_NUM, GFP_KERNEL);
    if (c_devs == NULL)
        goto release_class;

    for (i = 0; i < DEVICES_NUM; i++) {
        dev = device_create(clazz, NULL, MKDEV(MAJOR(devnum), i),
                            NULL, "kshram%d", i);
        if (dev == NULL)
            goto release_devices;

        c_devs[i] = cdev_alloc();
        if (c_devs[i] == NULL)
            goto release_devices;

        c_devs[i]->owner = THIS_MODULE;
        c_devs[i]->ops = &hellomod_dev_fops;
        if (cdev_add(c_devs[i], MKDEV(MAJOR(devnum), i), 1) == -1)
            goto release_cdev;

        dev_data[i].data = kzalloc(4096, GFP_KERNEL);
        if (!dev_data[i].data)
            goto release_cdev;
        // Print message indicating memory allocation for device
        printk(KERN_INFO "kshram%d: %d bytes allocated @ %px\n", i, 4096, dev_data[i].data);
        dev_data[i].size = 4096;
    }

    // create proc
	proc_create("kshram", 0, NULL, &hellomod_proc_fops);

    printk(KERN_INFO "kshram: initialized.\n");
    return 0;    // Non-zero return means that the module couldn't be loaded.

    release_cdev:
        for (i = 0; i < DEVICES_NUM; i++) {
            cdev_del(c_devs[i]);
        }
    release_devices:
        for (i = 0; i < DEVICES_NUM; i++) {
            device_destroy(clazz, MKDEV(MAJOR(devnum), i));
            kfree(dev_data[i].data);
        }
    release_class:
        class_destroy(clazz);
    release_region:
        unregister_chrdev_region(devnum, DEVICES_NUM);
    return -1;
}


static void __exit hellomod_cleanup(void)
{

    int i = 0;
	remove_proc_entry("kshram", NULL);
    for (i = 0; i < DEVICES_NUM; i++) {
        device_destroy(clazz, MKDEV(MAJOR(devnum), i));
        kfree(dev_data[i].data);
        cdev_del(c_devs[i]);
        
    }
    unregister_chrdev_region(devnum, DEVICES_NUM);
	class_destroy(clazz);

	printk(KERN_INFO "kshram: cleaned up.\n");
}

module_init(hellomod_init);
module_exit(hellomod_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Chun-Ying Huang");
MODULE_DESCRIPTION("The unix programming course demo kernel module.");
