#!/bin/sh

if [ -z "$*" ]; then
	set -- ~/.mozilla/firefox/*
fi

for PROFILE in $*; do
    [ -d "${PROFILE}" ] && echo $PWD/ >| "$PROFILE/extensions/viking-willmaier@ml1.net"
done
