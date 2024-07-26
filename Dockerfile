FROM caddy:2.8.4-alpine

EXPOSE 8080

COPY Caddyfile /etc/caddy/Caddyfile
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]