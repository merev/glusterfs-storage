#!/bin/bash

echo "* Install the required packages ..."
apt-get update -y && apt-get install -y glusterfs-client

echo "* Prepare a mount point ..."
mkdir -p /mnt/glusterfs

echo "* Mount the volume ..."
mount -t glusterfs vm4:/vol01 /mnt/glusterfs

echo "* Mount on boot ..."
echo "vm4:/vol01 /mnt/glusterfs glusterfs defaults,_netdev 0 0" | tee -a /etc/fstab