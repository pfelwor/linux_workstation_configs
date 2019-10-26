#!/bin/bash
useradd -m foo
apt-get install sudo
echo "foo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
