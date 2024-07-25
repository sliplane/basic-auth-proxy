FROM caddy:2.8.4-alpine

ENV PORT 8080

COPY Caddyfile /etc/caddy/Caddyfile

