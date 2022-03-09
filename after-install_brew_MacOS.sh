#! /bin/bash

echo "installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing cask..."
brew install brew-cask-completion

echo "update brew"
brew update

DEV=(
    coreutils
    gnu-sed
    gnu-tar
    gnu-indent
    gnu-which
    grep
    wget
    bash
    gcc
    cpufetch
    neofetch

)

echo -n "Installing Gnu packages..."
brew install ${DEV[@]}

CASKS=(
    brave-browser
    discord
    cheatsheet
    visual-studio-code
    vlc
    zoom
    github
    clipy
    authy
    appcleaner
    dozer
    rectangle
    balenaetcher

)

echo -n "Installing cask apps..."
brew install --cask ${CASKS[@]}