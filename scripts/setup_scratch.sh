#!/bin/sh -e

DEVHUB_USER=$1
ALIAS=$2
shift 2

if [ -z $ALIAS ]; then
  echo "usage: $0 devhub_username alias [org create scratch options...]"
  exit 1
fi

sf org create scratch -f config/project-scratch-def.json -v ${DEVHUB_USER} -a ${ALIAS} -d "$@"
sf project deploy start
