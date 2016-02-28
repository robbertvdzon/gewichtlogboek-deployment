#!/bin/bash
set -e
exec 1> >(logger -s -t $(basename $0)) 2>&1
echo Starting gewichtlogboek
cd /workspace/gewichtlogboek-deployment/
/usr/local/bin/docker-compose up -d
