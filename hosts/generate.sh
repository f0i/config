#!/bin/bash

hosts="/etc/hosts"
src="/tmp/adserverlist"

echo "# Generated file
# To add entries to global hosts file go to
# $PWD
# and add files files to include to $0

" > $hosts

# My hosts files
cat ./hosts.localhost >> $hosts
cat ./hosts.dhcp >> $hosts
cat ./hosts.local >> $hosts
cat ./hosts.server >> $hosts
cat ./hosts.vgu >> $hosts

# Ad block
cat $src/hosts.* | \
  egrep -e "^127\.0\.0\.1" -e "^0\.0\.0\.0" | \
  sed "s/^127\.0\.0\.1/0.0.0.0/" | \
  sed "s///" | \
  sed 's/\s\s*/ /' | \
  sort -u | \
  cat >> $hosts
