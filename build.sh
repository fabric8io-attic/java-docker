#!/usr/bin/env bash

echo "building the Docker container for Java applications"
docker build -t fabric8/java .
docker tag fabric8/java:latest fabric8/java:2.0.0-SNAPSHOT

