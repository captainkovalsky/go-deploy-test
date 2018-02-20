#! /bin/bash

find ./k8n/ -iname \*.sh | xargs chmod +x

./k8n/clean.sh
./k8n/build.sh
./k8n/deploy.sh
