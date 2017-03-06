#!/bin/bash
set -e

docker run -d --net=host \
-v /var/lib/ceph:/var/lib/ceph \
-e MON_IP=172.20.201.212 \
-e CEPH_PUBLIC_NETWORK=172.20.201.0/24 \
-e KV_TYPE=etcd \
-e KV_IP=127.0.0.1 \
-e KV_PORT=2379 \
ceph/daemon:tag-build-master-jewel-ubuntu-16.04 mon
