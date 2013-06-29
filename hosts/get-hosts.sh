#!/bin/bash

dest="/tmp/adserverlist"
urls="./sources"

mkdir -p $dest
rm -r $dest/hosts.*

cat $urls | egrep -v "^#" | while read url
do
  ((i++))
  wget $url -O $dest/hosts.$i
done
