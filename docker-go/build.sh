#! /bin/bash

declare -r CURR_DIR=$(cd `dirname $0`; pwd)

build_dir=${1:-docker-go}
build_name=${2:-$build_dir}

img=$(docker images | grep darebeat/${build_name} | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $img
fi

docker build -f ${CURR_DIR}/Dockerfile -t darebeat/${build_name} .
