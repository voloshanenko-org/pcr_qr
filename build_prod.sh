#! /bin/bash
set -e

source env.prod
docker buildx build --push --platform linux/amd64,linux/arm64 --output=type=image,push=true --tag ${DOCKER_REGISTRY}/pcrqr:latest .
pip3 install -r deploy/requirements.txt
python3 deploy/deploy.py
