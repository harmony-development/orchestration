#!/bin/sh

cd /config

if [ ! -e /config/sql/schemas/models.sql ];
then
	mkdir -p /config/sql/schemas
	ln -s /var/lib/legato/models.sql /config/sql/schemas
fi

if [ ! -e harmony-key.pem ]; then legato -genkey; fi
if [ ! -e config.json ];
then
	legato
	echo "Initial config.json created. Please edit the file then restart this container."
	while true; do sleep 10000; done
fi

exec legato
