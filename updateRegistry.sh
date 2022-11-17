#!/bin/bash

cd /data/pkg
git pull origin linux
git add ./*
git commit -m "[update] Automatically update code warehouse data"
git push origin linux
