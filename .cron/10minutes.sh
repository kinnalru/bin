#!/bin/env bash

echo " === `date` *** 10minutes" >> ~/.cron/cron.log
source ~/.profile
source ~/.cron/env || exit 1
cd ~/.cron/10minutes || exit 1
for x in `ls *.sh`; do
	echo "  ** run $x:" >> ~/.cron/cron.log
	/bin/sh "$x" &> ~/.cron.log
done
