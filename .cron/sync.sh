#!/bin/env bash

echo " === `date` *** sync" >> ~/.cron/cron.log
source ~/.profile
source ~/.cron/env || exit 1
cd ~/.cron/sync || exit 1
for x in `ls *.sh`; do
	echo "  ** run $x:" >> ~/.cron/cron.log
	/bin/sh "$x" &>> ~/.cron/cron.log
done
