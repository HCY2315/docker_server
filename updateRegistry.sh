#!/bin/bash

cd /data/pkg
git add ./*
git commit -m "[update] Automatically update code warehouse data"
git push origin linux
