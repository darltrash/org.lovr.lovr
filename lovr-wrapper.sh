#!/bin/sh

if [ $# -eq 0 ]; then
    exec /app/bin/lovr /app/etc/lovr-nogame.zip
else
    exec /app/bin/lovr "$@"
fi
