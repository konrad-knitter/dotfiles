#!/usr/bin/env bash

# Overpower protector

if [ "$(whoami)" == 'root' ] ; then
   echo "You should not me with root access!"
   exit 1
fi 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Welcome! Initialzing submodules(s) getting ready to install .dotfiles!"
git submodule update --init --recursive

if [ "$(uname)" == "Darwin" ] ; then
    echo "Running on OSX"
elif ["$(uname)" == "Linux" ] ; then
    echo "Running on Linux"
else
    echo "Unknown OS. Exiting."
    exit 1
fi     

echo "System Settings"

if [ ! -d $HOME/.config ]; then
    echo "Creating ~/.config"
    mkdir -p $HOME/.config
fi

for config in $DIR/config/*; do
	    target=$HOME/.config/$( basename $config )
	        if [ -e $target ]; then
			        echo "~${target#$HOME} already exists... Skipping."
				    else
					            echo "Creating symlink for $config"
						            ln -s $config $target
							        fi
							done
