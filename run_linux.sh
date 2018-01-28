qemu-system-arm \
    -nographic \
    -sd vexpress.img \
    -M vexpress-a9 \
    -m 512M \
    -kernel zImage \
    -dtb vexpress-v2p-ca9.dtb \
    -smp 4 \
    -append "init=/linuxrc root=/dev/mmcblk0p1 rw rootwait earlyprintk console=ttyAMA0"
