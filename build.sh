#! /bin/bash

set -e

build_dir=${1:-docker-ssh}
build_name=${2:-$build_dir}

img=$(docker images | grep darebeat/${build_name} | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $img
fi

docker build -f ${build_dir}/Dockerfile -t darebeat/${build_name} .
