#!/usr/bin/env bash

if [ $# -ne 3 ]; then
  echo "Usage: ./addgreether.sh device_name remote_ip source_device_name";
  exit 1;
fi

local_ip=`ip addr show ${3} |sed -nEe 's/^[ \t]*inet[ \t]*([0-9.]+)\/.*$/\1/p'`

ip link add ${1} type gretap remote ${2} local $local_ip
ip link set ${1} up
