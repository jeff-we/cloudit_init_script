#!/bin/sh

sed -i '/GRUB_CMDLINE_LINUX/d' test.txt

echo 'GRUB_CMDLINE_LINUX=" crashkernel=auto rd.lvm.lv=centos/root rd.lvm.lv=centos/swap rhgb quiet net.ifnames=0"' >> test.txt

grub2-mkconfig -o /boot/grub2/grub.cfg

