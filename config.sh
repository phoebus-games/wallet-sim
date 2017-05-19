#!/bin/sh
set -eux

curl -X POST --data '{ "request": { "url": "/transactions", "method": "POST" }, "response": { "status": 201, "headers": {"Content-Type": "application/json"}, "body": "{\"balance\":10000}" }}' http://localhost:9090/__admin/mappings/new
curl -X POST --data '{ "request": { "url": "/", "method": "GET" }, "response": { "status": 200, "headers": {"Content-Type": "application/json"}, "body": "{\"balance\":10000}" }}' http://localhost:9090/__admin/mappings/new
