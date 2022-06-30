# /bin/bash

KEY=$(ls ../docker/organizations/peerOrganizations/org1.themedium.io/users/Admin@org1.themedium.io/msp/keystore/)


cp -f ./networks/fabric/test-network.yaml.template ./networks/fabric/test-network.yaml
sed -i "s/{{CLIENTKEYSTORE}}/$KEY/g" ./networks/fabric/test-network.yaml

echo "Client key apply to the Caliper config"
echo $(ls ../docker/organizations/peerOrganizations/org1.themedium.io/users/Admin@org1.themedium.io/msp/keystore/)
echo ""

echo "Caliper Start! "

npx caliper launch manager \
    --caliper-workspace . \
    --caliper-benchconfig benchmarks/scenario/simple/config.yaml \
    --caliper-networkconfig networks/fabric/test-network.yaml
