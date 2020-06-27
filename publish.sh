#!/bin/bash

NUGET_VERSION=5.6.0

docker build --build-arg=NUGET_VERSION=$NUGET_VERSION -t oddstr13/mono-nuget:$NUGET_VERSION .
docker push oddstr13/mono-nuget:$NUGET_VERSION

docker tag oddstr13/mono-nuget:$NUGET_VERSION oddstr13/mono-nuget:latest
docker push oddstr13/mono-nuget:latest