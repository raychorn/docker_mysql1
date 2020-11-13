#!/bin/bash

if [ -f "/usr/bin/python" ]; then unlink /usr/bin/python; fi
ln -s /usr/local/bin/python3.8 /usr/bin/python
if [ -f "/usr/bin/pip" ]; then unlink /usr/bin/pip; fi
ln -s /usr/local/bin/pip3.8 /usr/bin/pip 
if [ -f "/usr/bin/pip3" ]; then unlink /usr/bin/pip3; fi
ln -s /usr/local/bin/pip3.8 /usr/bin/pip3

apt-get install strace -y

export TZ=US/Mountain
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

service mysql start
