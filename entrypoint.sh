#!/bin/sh
set -x

if [ -n "$USEID" ]; then
	adduser -D -u "$USEID" appuser
	sudo -u appuser "$@"
else
	"$@"
fi

