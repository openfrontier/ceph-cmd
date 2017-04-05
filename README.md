# ceph-docker-cli

Run ceph in docker

## Prerequests

 * docker
 * etcd2 cluster at localhost listening 2379
 * raw disk at /dev/sdc

## Create directories

    ./populate-dir.sh

## Install ceph cli for docker

    ./ceph-install.sh

## Start ceph mon

    ./create-ceph-mon.sh $HOST_IP(e.g. 192.168.1.10) $CEPH_PUBLIC_NETWORK(e.g. 192.168.1.0/24)

## Start ceph osd

    ./create-ceph-osd.sh
