#! /bin/bash -x

declare -r CURR_DIR=$(cd `dirname $0`;pwd)
cd ${CURR_DIR}

if [[ $1 ]]; then
git checkout 454adb6a97daeb6dd8ec1d59f365fbfd8401827 -b $1
if [[ ! -d $1 ]]; then
	mkdir $1
fi
else
	echo "There is no branch to create."
	exit 30
fi