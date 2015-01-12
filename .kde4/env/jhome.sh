#!/bin/env bash


source $HOME/.profile

#eval `ssh-agent`
eval `gpg-agent --daemon --enable-ssh-support`

sudo xhost +
xhost +

export SSH_ASKPASS=`which ksshaskpass || which x11-ssh-askpass`
jenv

echo "ok"
