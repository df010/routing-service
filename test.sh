#!/bin/bash
find . -iname "*~"|xargs rm
bosh create-release <<<"y"
bosh -e e upload-release <<<"y"
bosh -e e -d haproxy delete-deployment <<<"y"
bosh -e e -d haproxy deploy manifests/manifest.yml <<<"y"
