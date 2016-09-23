#!/bin/sh
sudo chown -R root:bind /etc/bind
named -f
