# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the linux ext4-filesystem routines.
#

obj-m += ext4r.o

ext4r-y	:= balloc.o bitmap.o block_validity.o dir.o ext4_jbd2.o extents.o \
		extents_status.o file.o fsmap.o fsync.o hash.o ialloc.o \
		indirect.o inline.o inode.o ioctl.o mballoc.o migrate.o \
		mmp.o move_extent.o namei.o page-io.o readpage.o resize.o \
		super.o symlink.o sysfs.o xattr.o xattr_trusted.o xattr_user.o \
		acl.o xattr_security.o verity.o

#ext4-$(CONFIG_EXT4_FS_POSIX_ACL)	+= acl.o
#ext4-$(CONFIG_EXT4_FS_SECURITY)		+= xattr_security.o
#ext4-$(CONFIG_FS_VERITY)		+= verity.o

#obj-m += easy.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
