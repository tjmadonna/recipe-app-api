#!/bin/sh

# Any errors will crash
set -e

# Substitue ${XXX} syntax with environment variables and put it in conf.d location
envsubst < /etc/nginx/default.conf.tpl > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;' # run in the foreground since it's in docker