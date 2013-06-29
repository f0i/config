#!/bin/bash

hosts="/etc/hosts"
src="/tmp/adserverlist"

echo "# Generated file
# To add entries to global hosts file go to
# $PWD
# and add files files to include to $0

" > $hosts

# My hosts file
cat hosts >> $hosts

cat $src/hosts.* | \
  egrep -e "^127\.0\.0\.1" -e "^0\.0\.0\.0" | \
  sed "s/^127\.0\.0\.1/0.0.0.0/" | \
  sed "s///" | \
  sed 's/\s\s*/ /' | \
  sort -u | \
  cat >> $hosts
