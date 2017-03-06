#!/bin/bash
set -e

HOST_IP=$1
CEPH_PUBLIC_NETWORK=$2

docker run -d --net=host --name=ceph-mon-${HOSTNAME} \
-v /etc/ceph:/etc/ceph \
-v /etc/ganesha:/etc/ganesha \
-v /var/lib/ceph:/var/lib/ceph \
-e MON_IP=${HOST_IP} \
-e CEPH_PUBLIC_NETWORK=${CEPH_PUBLIC_NETWORK} \
-e KV_TYPE=etcd \
-e KV_IP=127.0.0.1 \
-e KV_PORT=2379 \
ceph/daemon:tag-build-master-jewel-ubuntu-16.04 mon
