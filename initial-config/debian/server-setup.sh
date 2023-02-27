#!/bin/bash

echo "* Install the required packages ..."
apt-get update -y && apt-get install -y glusterfs-server glusterfs-common

echo "* Enable and start the service ..."
systemctl enable --now glusterd

echo "* Create folder that will be used ..."
mkdir -p /storage/glusterfs