#!/bin/bash
set -e
echo "cloneing wine-docker-builder..."
git clone https://github.com/codehungers/wine-docker-builder || true
pushd wine-docker-builder > /dev/null
echo "pulling last changes from wine-docker-builder..."
git pull
popd > /dev/null
echo "creating hardlinks to all patches and config files into wine-docker-builder"
cp -vl patches/*.mypatch wine-docker-builder/resources/patches
cp -vl configs/*.cfg wine-docker-builder/resources/configs
echo "all is ready now get inside \"https://github.com/codehungers/wine-docker-builder\" for instructions of the build process"

