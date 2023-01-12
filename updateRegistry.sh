#!/bin/bash

cd /data/docker_server
git pull origin linux
git add ./*
git commit -m "[update] Automatically update code warehouse data"
git push origin linux
