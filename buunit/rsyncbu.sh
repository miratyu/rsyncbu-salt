#!/usr/bin/env bash

BACKUP_SERVER=10.0.0.2

function update() {
	rsync -az rsync://$BACKUP_SERVER/backups $1 # $(date -I)/
}

if [ $# -le 1 ]
then
	echo "Usage:"
	echo "	$0 <command> [...args]"
	echo ""
	echo "Commands:"
	echo "	update - sync with remote backup folder"
fi

case $1 in
update)
	update $2
	;;
esac
