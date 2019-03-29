#!/bin/bash
# Script to deploy config-files into your home-dir

echo "copying files into your home-directory"
cp ./.bashrc ./.vimrc ./.gitconfig ./.kubectl_autocompletion ${HOME}/
if [ $? -ne 0 ]
then
    echo "something went wrong - sorry :-("
    exit 1
fi
exit 0
