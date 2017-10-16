#! /bin/bash

set -e

# Check private key
if [ -n "$SSH_PRIVATE_KEY" ]; then
	eval $(ssh-agent -s)
	ssh-add <(echo "$SSH_PRIVATE_KEY")  >/dev/null 2>&1
	unset SSH_PRIVATE_KEY
fi

exec "$@"