#!/bin/bash

dd if=/dev/zero of=/gluster.xfs bs=1M count=2048 && \
mkfs.xfs -isize=512 /gluster.xfs && \
mkdir -p /mnt/glusterdata
mount -oloop,inode64,noatime /gluster.xfs /mnt/glusterdata

glusterd
sleep 20
gluster peer probe $1