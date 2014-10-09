#!/bin/env bash

source ~/.profile
source ~/.cron/env || exit 1
cd ~/.cron/1hour || exit 1
for x in `ls *.sh`; do
	/bin/sh "$x"
done
