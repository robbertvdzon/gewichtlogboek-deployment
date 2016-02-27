#!/bin/bash
set -e
exec 1> >(logger -s -t $(basename $0)) 2>&1
echo Updating and starting mijnsportwedstrijden
cd /workspace/gewichtlogboek-deployment/
curl http://www.vdzon.com/_jar/download.php?file=gewichtlogboek.jar --output data/gewichtlogboek.jar

sleep 10
/usr/local/bin/docker-compose build
/usr/local/bin/docker-compose up -d
