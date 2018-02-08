#!/bin/bash

TARGET_ROOTFS=~/new_workspace/sys_test/buildroot-2017.02.8/output/target/

sudo mkdir -p /mnt/rootfs

sudo losetup /dev/loop0 vexpress.img

sudo partx -u /dev/loop0

sudo mount -o loop /dev/loop0p1 /mnt/rootfs

sudo rsync -a --delete $TARGET_ROOTFS /mnt/rootfs/

sudo chown -R root:root /mnt/rootfs

sudo sync

sudo umount -f /mnt/rootfs

sudo losetup -d /dev/loop0
