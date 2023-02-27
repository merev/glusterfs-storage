#!/bin/bash

echo "* Install the missing repository ..."
dnf install -y centos-release-gluster10

echo "* Add prerequisites ..."
rpm -i /shared/python3-pyxattr-0.5.3-18.el8.x86_64.rpm

echo "* Install the required packages ..."
dnf install -y glusterfs glusterfs-libs glusterfs-server

echo "* Enable and start the service ..."
systemctl enable --now glusterd

echo "* Adjust the firewall settings ..."
firewall-cmd --add-service=glusterfs --permanent
firewall-cmd --reload

echo "* Create folder that will be used ..."
mkdir -p /storage/glusterfs