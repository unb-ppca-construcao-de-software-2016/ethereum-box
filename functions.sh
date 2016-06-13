#!/bin/bash

myapp_create_and_deploy() {
    mkdir -p /vagrant/myapp && cd $_
    truffle init
    truffle compile
    truffle deploy
}

f=~/.bashrc
grep -q  '^source.*functions.sh$' $f || echo 'source /vagrant/functions.sh' >> $f
unset f
