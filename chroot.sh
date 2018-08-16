mount -t proc proc proc/

mount --rbind /sys sys/
mount --make-rslave sys/

mount --rbind /dev dev/
mount --make-rslave dev/

mkdir -p lib/modules
mount --bind /lib/modules lib/modules

rm -f etc/resolv.conf 
cp /etc/resolv.conf etc/
chroot .
