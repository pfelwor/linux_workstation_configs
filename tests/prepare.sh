#!/bin/bash
useradd -m foo
echo "foo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
