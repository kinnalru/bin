#!/bin/env bash

source ~/.cron/env
cd ~/.cron/10minutes || exit 1
for x in `ls *.sh`; do
	/bin/sh "$x"
done
