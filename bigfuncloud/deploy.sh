#!/bin/sh

set -ex

npm install
npm run build
cp src/index.html out/

export IMAGE=registry.$BFC_DOMAIN/$BFC_USER/$BFC_APP:latest
docker build -t "$IMAGE" .
docker push "$IMAGE"
