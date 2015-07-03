FROM debian:jessie

RUN apt-get update && apt-get upgrade -y && \
		apt-get install -y wget

RUN	wget -O - http://download.gluster.org/pub/gluster/glusterfs/3.7/3.7.2/Debian/jessie/pub.key | apt-key add - && \
		echo deb http://download.gluster.org/pub/gluster/glusterfs/3.7/3.7.2/Debian/jessie/apt jessie main > /etc/apt/sources.list.d/gluster.list

RUN apt-get update && apt-get install -y glusterfs-server xfsprogs

ADD run.sh /run.sh
ADD clustervolume.sh /clustervolume.sh