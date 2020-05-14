#!/bin/sh
#
# Simply execute this script to setup devlab environment
#
# curl -sSL https://raw.githubusercontent.com/devicemanager/devlab/master/setup.sh | bash -s
#
# Prerequisites:
# - Docker & Docker Toolbox v1.10
# - Git v2.6.4
echo "Creating local directories for persistence"
sudo mkdir -p /opt/devlab/gerrit
sudo mkdir -p /opt/devlab/jenkins
sudo mkdir -p /opt/devlab/nexus/
sudo mkdir -p /opt/devlab/postgres
sudo mkdir -p /opt/devlab/ldap
sudo chown -R $USER: /opt/devlab
echo "Checkout Git Repository"
git clone https://github.com/devicemanager/devlab
cd devlab
echo "Startup Docker Compose"
docker-compose up -d
docker run portainer
