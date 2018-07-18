#!/bin/sh

action=$1

case $action in
	-l)
		;;
	-u)
		;;
	*)
		echo "Unsupported action $action" >&2
		;;
esac

if test -d /etc/verictl.d; then
	cat /etc/verictl.d/* | \
		/update/sbin/verictl $action -f -
fi
