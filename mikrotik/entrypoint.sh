#!/bin/bash

if [ ! -x /app/mikrotik-exporter ]; then
  chmod 755 /app/mikrotik-exporter
fi

/app/mikrotik-exporter -config-file /app/conf/config.yml


