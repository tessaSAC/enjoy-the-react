FROM caddy:2.4.1 
COPY ./Caddyfile /etc/caddy/Caddyfile
COPY ./out /out
