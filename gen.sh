#!/bin/bash
#bosh create-release --tarball


num=`sed -n 's/product_version: 1\.0\.\(.*\)/\1/p' manifests/template.yml`
num=$((num+1))
sed -i "s/\(product_version: 1\.0\.\).*/\1$num/" manifests/template.yml
~/workspace/bosh-gen/tile.sh .
