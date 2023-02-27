#!/bin/bash

echo "* Install the missing repository ..."
dnf install -y centos-release-gluster10

echo "* Add prerequisites ..."
rpm -i /shared/python3-pyxattr-0.5.3-18.el8.x86_64.rpm

echo "* Install the required packages ..."
dnf install -y glusterfs glusterfs-fuse

echo "* Prepare a mount point ..."
mkdir -p /mnt/glusterfs

echo "* Mount the volume ..."
mount -t glusterfs vm1:/vol01 /mnt/glusterfs

echo "* Mount on boot ..."
echo "vm1:/vol01 /mnt/glusterfs glusterfs defaults,_netdev 0 0" | tee -a /etc/fstab