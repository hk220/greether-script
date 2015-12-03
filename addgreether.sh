#!/usr/bin/env bash

if [ $# -ne 3 ]; then
  exit 1;
fi

ip link add $1 type gretap remote $2 local $3
ip link $1 up
