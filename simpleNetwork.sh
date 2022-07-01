# /bin/bash
cd ../docker

./network.sh down
./network.sh up createChannel -ca -s couchdb
./network.sh deployCC -ccn simple -ccv 1 -ccl go -ccp ../caliper/src/fabric/scenario/simple/go

cd ../caliper

