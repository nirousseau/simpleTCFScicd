#!/usr/bin/env bash

docker build -t nrousseau/jenkins-agent-allinone:3.0 .
docker push nrousseau/jenkins-agent-allinone:3.0
