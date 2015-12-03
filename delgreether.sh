#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "Usage: ./delgreether.sh device_name";
  exit 1;
fi

ip link del ${1}
