#!/bin/bash
#bosh create-release --tarball

release_file() {
  RELEASE_NAME=`cat config/final.yml|grep name:|cut -d" " -f2`
  DEV_RELEASE=`ls -1  dev_releases/$RELEASE_NAME/*.tgz|sort -V -r|head -1`
  FINAL_RELEASE=`ls -1  releases/$RELEASE_NAME/*.tgz|sort -V -r|head -1`
  RELEASE=$DEV_RELEASE;

  [[ "$FINAL_RELEASE" != "" ]] && if [[ "$RELEASE" == "" ]]; then
     RELEASE=$FINAL_RELEASE;
  elif [ $FINAL_RELEASE -nt $DEV_RELEASE ]; then
     RELEASE=$FINAL_RELEASE;
  fi
  echo $RELEASE
}

cp -r ~/gocode/src/github.com/df010/ondemand-service-adapter/adapter  /home/df/workspace/ondemand-service-adapter-release/src/github.com/df010/ondemand-service-adapter/
cp -r ~/gocode/src/github.com/df010/ondemand-service-adapter/cmd  /home/df/workspace/ondemand-service-adapter-release/src/github.com/df010/ondemand-service-adapter/

cd /home/df/workspace/ondemand-service-adapter-release
bosh create-release --tarball --force

rm ~/workspace/bosh-tools/gens/releases/ondemand-service-adapter*
echo "releasefile is"`release_file`
cp `release_file` ~/workspace/bosh-tools/gens/releases/

cd -

echo "sync completes"
ls -al ~/workspace/bosh-tools/gens/releases/
