#!/bin/bash
set -e

git pull origin main
chmod +x ./gradlew
./gradlew clean build bootJar

pkill -f "my-jenkins-practice-0.0.1-SNAPSHOT.jar" || true
sleep 3

echo "sleep 10; bash $WORKSPACE/start.sh" | at now