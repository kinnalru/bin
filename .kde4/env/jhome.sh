#!/bin/env bash


source $HOME/.profile

eval `ssh-agent`
sudo xhost +
xhost +

export SSH_ASKPASS=`which ksshaskpass || which x11-ssh-askpass`
jenv

echo "ok"
