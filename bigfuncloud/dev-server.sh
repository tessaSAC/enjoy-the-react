#!/bin/bash

cp src/index.html out/
npm run build
reflex -g "src/**/*" -s -- sh -c "npm run build && invalidate-devserver" &

docker run -i --rm -p 80:80 \
            --name caddy \
            -v $PWD/out/:/out \
            -v $PWD/Caddyfile:/etc/caddy/Caddyfile \
            -v caddy_data:/data \
            caddy
