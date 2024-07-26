#!/bin/sh
set -e

export HTTP_BASIC_AUTH_PASSWORD_HASH=$(caddy hash-password --plaintext "$HTTP_BASIC_AUTH_PASSWORD")

exec "$@"