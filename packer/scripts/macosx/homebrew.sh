#!/bin/bash

# Fix a bug in the 10.11.6 installation
/bin/mkdir -p /Users/vagrant/Library/Caches

#Silently install homebrew
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
