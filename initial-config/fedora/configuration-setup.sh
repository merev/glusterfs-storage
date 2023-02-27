#!/bin/bash

echo "* Test the communication between teh peers ..."
gluster peer probe vm1

echo "* Show the status ..."
gluster peer status

echo "* Wait until the peers are connected..."
sleep 5s

echo "* Create a volume ..."
gluster volume create vol01 replica 2 transport tcp vm1:/storage/glusterfs vm2:/storage/glusterfs force

echo "* Start the volume ..."
gluster volume start vol01