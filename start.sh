#!/usr/bin/env bash

nginx -c "$(pwd)"/routes.conf &

./run-all.sh
