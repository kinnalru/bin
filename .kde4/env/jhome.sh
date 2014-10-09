#!/bin/env bash

eval `ssh-agent`
sudo xhost +
xhost +

export SSH_ASKPASS=`which ksshaskpass || which x11-ssh-askpass`
~/bin/jenv

echo "ok"
