#!/bin/bash
# add execute permission to the script: chmod +x start-jenkins.sh
# start Docker Compose with jenkins-docker-compose.yml
docker-compose -f jenkins-posgres-docker-compose.yml up -d

echo "Jenkins is starting up..."
sleep 30

ADMIN_PASSWORD=$(docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword)
echo "Done. Jenkins is up and running."