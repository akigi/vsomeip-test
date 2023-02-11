#!/bin/bash

trap_TERM() {
    now=$(date "+%Y/%m/%d-%H:%M:%S")
    echo "[${now}]" SIGTERM ACCEPTED
    exit 0
}

trap 'trap_TERM' TERM

while :
do
    sleep 1
done