# devlab

Setup local devlab environment using Docker via docker-compose (Jenkins, SonarQube, Nexus, Gerrit, Selenium Grid with Firefox and chrome)

Quick setup:

In Docker Desktop Add resources:
/opt/devlab
/Applications/Docker.app/Contents/Resources/bin/

To Docker Resources: FILE SHARING

Then run: curl -sSL https://raw.githubusercontent.com/devicemanager/devlab/master/setup.sh | bash -s

To bootstrap the rest of the environment.

After succesful loading edit using ldapadmin https://localhost:6443/

With special thanks to Marcel Birkner who inspired me to create this repo. 
