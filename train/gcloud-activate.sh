#!/bin/bash

apt-get install -y curl
echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update && apt-get install -y google-cloud-sdk
gcloud auth activate-service-account --key-file=credentials.json 
gcloud config set project tensorflow-example-177306