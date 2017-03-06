#!/bin/bash
set -e

docker run -d --privileged=true \
-v /dev/:/dev/ \
-e OSD_DEVICE=/dev/sdc \
ceph/daemon zap_device
