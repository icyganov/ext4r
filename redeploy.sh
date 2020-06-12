make
./umount.sh
sudo rmmod ext4r
sudo insmod ./ext4r.ko
./mount.sh
