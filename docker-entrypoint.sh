#!/usr/bin/env sh
set -eu

envsubst '${SAERVICE}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
