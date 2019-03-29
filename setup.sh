#!/bin/bash
# Script to deploy config-files into your home-dir

echo "copying files into your home-directory"
cp ./.vimrc ./.kubectl_autocompletion ${HOME}/
if [ $? -ne 0 ] ; then
    die 1
fi

# expanding your .bashrc-file
cat ./.bashrc >> ${HOME}/.bashrc
if [ $? -ne 0 ] ; then
    die 2
fi

# copying .gitconfig-file
echo "Please enter your mailaddress you want to be used for git:"
read mailaddress
echo "what name should be used for git?:"
read name
sed 's/MAILADDRESS/${mailaddress}/g' ./.gitconfig > ./.gitconfig_mail
if [ $? -ne 0 ] ; then
    die 3
fi
sed 's/NAME/${name}/g' ./.gitconfig_mail > {HOME}/.gitconfig
if [ $? -ne 0 ] ; then
    die 4
fi

function die {
    echo "something went wrong - sorry :-("
    exit $1
}

exit 0
