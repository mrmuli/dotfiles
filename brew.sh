#!/usr/bin/env bash


# install and configure brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"


# *** Formulae notes and gotchas *** #
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# ********************************** #

FORMULAE=(
    coreutils
    findutils
    gnu-sed --with-default-names
    vim --with-override-system-vi
    grep
    openssh
    git
    git-lfs
    ssh-copy-id
    tree
    wget --with-iri
    nmap
    ansible
    ansible-cmdb
    awsli
    awscli
    azure-coreutils
    node
    go
    kubectx
    azure-cli
    mysql
    jq
)

func install () (
    for fm in ${FORMULAE[@]}; do:
    brew install $fm
    done
)

install