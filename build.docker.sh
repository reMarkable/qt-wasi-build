#!/usr/bin/env bash

echo "::group::Docker setup"

set -e

docker build . -t qt-wasm32-wasi-worker

docker run --rm --user=root \
    -v `pwd`:`pwd` \
    -w `pwd` \
    qt-wasm32-wasi-worker \
    sh -c "./build.sh"
