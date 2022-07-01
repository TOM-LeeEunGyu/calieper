# /bin/bash

sudo apt install -y make
sudo apt install -y gcc

npm install -g --only=prod @hyperledger/caliper-cli@0.5.0
caliper bind --caliper-bind-sut fabric:2.2 --caliper-bind-args=-g

npm install
npm install @hyperledger/caliper-core@0.5.0
