#!/usr/bin/env bash

cd ./evmwrap
make
cd ..

#file ./evmwrap/host_bridge/libevmwrap.so
export EVMWRAP=$PWD/evmwrap/host_bridge/libevmwrap.so

# git clone https://github.com/smartbch/testdata.git
go build ./...
go test ./...
