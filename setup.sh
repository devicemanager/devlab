#!/bin/sh
#
# Simply execute this script to setup devlab environment
#
# curl -sSL https://raw.githubusercontent.com/devicemanager/devlab/master/setup.sh | bash -s
#
# Prerequisites:
# - Docker & Docker Toolbox v1.10
# - Git v2.6.4

echo "Create docker machine"
docker-machine create -d virtualbox --virtualbox-memory "12000" devlab

echo "Setup environment"
eval $(docker-machine env devlab)

echo "Checkout Git Repository"
git clone https://github.com/devicemanager/devlab
cd devlab

echo "Startup Docker Compose"
docker-compose up
