#!/bin/bash
mkdir /mnt/glusterdata/gv0
gluster volume create gv0 replica 2 $1:/mnt/glusterdata/gv0 $2:/mnt/glusterdata/gv0
gluster volume start gv0