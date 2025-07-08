#!/bin/bash
export JENKINS_HOME=/var/lib/jenkins
export WORKSPACE=$JENKINS_HOME/workspace/build-test
echo "nohup java -jar -Dspring.profiles.active=dev $WORKSPACE/build/libs/my-jenkins-practice-0.0.1-SNAPSHOT.jar > /dev/null & echo $! > pid.txt" > start.sh
chmod +x start.sh