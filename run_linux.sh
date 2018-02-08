ROOTFS=~/new_workspace/sys_test/buildroot-2017.02.8/output/images

qemu-system-arm \
    -nographic \
    -sd vexpress.img \
    -M vexpress-a9 \
    -m 512M \
    -kernel $ROOTFS/zImage \
    -dtb $ROOTFS/vexpress-v2p-ca9.dtb \
    -smp 4 \
    -append "init=/linuxrc root=/dev/mmcblk0p1 rw rootwait earlyprintk console=ttyAMA0" \
    #-net nic,vlan=0 \
    #-net tap,vlan=0,ifname=tap31,script=no,downscript=no
