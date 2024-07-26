FROM caddy:2.8.4-alpine

EXPOSE 8080

COPY Caddyfile /etc/caddy/Caddyfile

ENTRYPOINT [ "./entrypoint.sh" ]