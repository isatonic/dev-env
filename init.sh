#!/bin/sh

mkdir -p ./docker/data/db/data
git clone https://github.com/isatonic/hew2019.git ./docker/data/www
ln -sf ../../www/schema ./docker/data/db/sql
