#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  exit 1;
fi

ip link del ${1}
