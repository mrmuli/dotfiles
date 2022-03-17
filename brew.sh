#!/usr/bin/env bash


# Housekeeping to makes ure we're using the latest Homebrew
brew update

# Upgrade ant already-installed formulae
brew upgrade


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

brew install findutils

brew install gnu-sed --with-default-names

# some useful stuff
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install wget --with-iri
brew install nmap


# tools
brew install ansible #latest 
brew install ansible-cmdb
brew install awscli
brew install azure-coreutils
brew install node
brew install go
brew install kubectx
brew install azure-cli
brew install mysql
