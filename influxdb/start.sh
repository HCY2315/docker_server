#!/bin/bash
set -x

docker run -d -p 8086:8086 -v $PWD/idata:/var/lib/influxdb -v $PWD/influxdb.conf:/etc/influxdb/influxdb.conf:ro --name influxdb --rm influxdb -config /etc/influxdb/influxdb.conf
