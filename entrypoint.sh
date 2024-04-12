#!/usr/bin/env bash

# If first argument starts with dash, we're launching the server, otherwise we're running a command.
case "$1" in
    -*)
        /opt/factorio/bin/x64/factorio "$@" ;;
    *)
        exec "$@" ;;
esac