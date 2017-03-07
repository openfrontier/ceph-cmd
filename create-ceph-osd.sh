#!/bin/bash
set -e

docker run -d --net=host --name=ceph-osd-${HOSTNAME} \
--privileged=true \
--pid=host \
-v /dev/:/dev/ \
-v /var/lib/ceph:/var/lib/ceph \
-e OSD_DEVICE=/dev/sdc \
-e KV_TYPE=etcd \
-e KV_IP=127.0.0.1 \
-e KV_PORT=2379 \
ceph/daemon:tag-build-master-jewel-ubuntu-16.04 osd_ceph_disk
