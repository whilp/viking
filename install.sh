#!/bin/sh

if [ -z "$*" ]; then
	set -- ~/.mozilla/firefox/*
fi

for PROFILE in $*; do
    if [ -d "${PROFILE}" ]; then
        mkdir -p "$PROFILE/extensions"
        echo $PWD/ >| "$PROFILE/extensions/viking-willmaier@ml1.net"
    fi
done
