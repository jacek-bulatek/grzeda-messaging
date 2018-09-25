#!/bin/bash

grzeda-messaging()
{
	git clone git@github.com:mbulatek/grzeda-server.git
	git clone git@github.com:mbulatek/grzeda-test-client.git
}

grzeda-server()
{
	git clone git@github.com:mbulatek/grzeda-test-client.git
	git clone git@github.com:jacek-bulatek/grzeda-messaging.git
}

grzeda-test-client()
{
	git clone git@github.com:jacek-bulatek/grzeda-messaging.git
	git clone git@github.com:mbulatek/grzeda-server.git
}

#
# MAIN
#

cd ../../

lsOutput = `ls`

case $lsOutput in
  "grzeda-messaging") grzeda-messaging ;;
  "grzeda-server") grzeda-server ;;
  "grzeda-test-client") grzeda-test-client ;;
  *) echo "No repository provided!"
  exit(1)
esac