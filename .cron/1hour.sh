#!/bin/env bash

echo " === `date` *** 1hour" >> ~/.cron/cron.log
source ~/.profile
source ~/.cron/env || exit 1
cd ~/.cron/1hour || exit 1
for x in `ls *.sh`; do
	echo "  ** run $x:" >> ~/.cron/cron.log
	/bin/sh "$x" ~/.cron/cron.log
done
