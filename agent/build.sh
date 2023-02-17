#!/usr/bin/env bash

docker build -t nrousseau/jenkins-agent-allinone:2.0 .
docker push nrousseau/jenkins-agent-allinone:2.0
