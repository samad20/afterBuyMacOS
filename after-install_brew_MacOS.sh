#! /bin/bash

echo -n ""
echo -n "installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install brew-cask-completion

echo -n "installing google-chrome"
brew install --cask google-chrome

echo -n "installing brave-browser"
brew install --cask brave-browser

echo -n "installing microsoft-edge"
brew install --cask microsoft-edge

echo -n "installing discord"
brew install --cask discord

echo -n "installing cheatsheet"
brew install --cask cheatsheet

echo -n "installing visual-studio-code"
brew install --cask visual-studio-code

echo -n "installing vlc"
brew install --cask vlc

echo -n "installing iina"
brew install --cask iina

echo -n "installing zoom"
brew install --cask zoom

echo -n "installing github"
brew install --cask github

echo -n "installing python"
brew install python-tk@3.9

echo -n "installing openjdk@11"
brew install openjdk@11

echo -n "installing clipy"
brew install --cask clipy

echo -n "installing neofetch"
brew install neofetch

echo -n "installing cpufetch"
brew install cpufetch

echo -n "installing gcc"
brew install gcc

echo -n "installing authy"
brew install --cask authy

echo -n "installing appcleaner"
brew install --cask appcleaner

echo -n "installing atom"
brew install --cask atom

echo -n "installing spotify"
brew install --cask spotify

echo -n "installing virtualbox"
brew install --cask virtualbox
