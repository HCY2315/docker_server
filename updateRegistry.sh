#!/bin/bash

cd /data/pkg
git add ./*
git commit -m "[update] auto date registry data"
git push origin linux
