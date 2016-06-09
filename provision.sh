#!/bin/bash

apt-get install -y software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get update
apt-get install -y git nodejs nodejs-legacy npm ethereum
npm install -g truffle ethereumjs-testrpc
