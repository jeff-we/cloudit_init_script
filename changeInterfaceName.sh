#!/bin/sh

sed -i '/GRUB_CMDLINE_LINUX/d' /etc/default/grub

echo 'GRUB_CMDLINE_LINUX=" crashkernel=auto rd.lvm.lv=centos/root rd.lvm.lv=centos/swap rhgb quiet net.ifnames=0"' >> /etc/default/grub

grub2-mkconfig -o /boot/grub2/grub.cfg



