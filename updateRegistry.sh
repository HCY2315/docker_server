#!/bin/bash

cd /data/pkg
git add ./*
git commit -m "[update] update registry data"
git push origin linux
