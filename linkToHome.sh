#!/bin/sh

# When the environment variable DRYRUN is non-empty, do not
# actually make any changes, but only show what would be done

set -e

echodo() {
	echo $@
	[ 0"$DRYRUN" = "0" ] && $@ || true
}

# make sure that $HOME is defined
if [ 0"$HOME" = "0" ]; then
	echo "HOME is empty or unset!"
	exit 1
fi

for L in */linkToHome.sh; do
	[ -x $L ] && echodo $L $@
	echo
done

# vim: set noexpandtab:
