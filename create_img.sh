dd if=/dev/zero of=vexpress.img bs=512 count=$((2*1024*100))
qemu-img create -f raw vexpress.img 100M

parted -s vexpress.img mklabel gpt
parted -s vexpress.img mkpart primary 0 100%

losetup /dev/loop0 vexpress.img
mkfs.ext2 /dev/loop0p1 
losetup -d /dev/loop0
