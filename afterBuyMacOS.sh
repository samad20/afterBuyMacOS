#! /bin/bash

echo -ne "

░█████╗░███████╗████████╗███████╗██████╗░  ██████╗░██╗░░░██╗██╗░░░██╗  ███╗░░░███╗░█████╗░░█████╗░░█████╗░░██████╗
██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗  ██╔══██╗██║░░░██║╚██╗░██╔╝  ████╗░████║██╔══██╗██╔══██╗██╔══██╗██╔════╝
███████║█████╗░░░░░██║░░░█████╗░░██████╔╝  ██████╦╝██║░░░██║░╚████╔╝░  ██╔████╔██║███████║██║░░╚═╝██║░░██║╚█████╗░
██╔══██║██╔══╝░░░░░██║░░░██╔══╝░░██╔══██╗  ██╔══██╗██║░░░██║░░╚██╔╝░░  ██║╚██╔╝██║██╔══██║██║░░██╗██║░░██║░╚═══██╗
██║░░██║██║░░░░░░░░██║░░░███████╗██║░░██║  ██████╦╝╚██████╔╝░░░██║░░░  ██║░╚═╝░██║██║░░██║╚█████╔╝╚█████╔╝██████╔╝
╚═╝░░╚═╝╚═╝░░░░░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝  ╚═════╝░░╚═════╝░░░░╚═╝░░░  ╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░░╚════╝░╚═════╝░
"


# install Homebrew-The Missing Package Manager for macOS (or Linux)
echo "installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Fish completion for brew-cask
echo "Installing cask..."
brew install brew-cask-completion

echo "update brew"
brew update

# list for what you want install from brew.sh
DEV=(
    # Mac App Store command-line interface
    mas
    # GNU File, Shell, and Text utilities
    coreutils
    # GNU implementation of the famous stream editor
    gnu-sed
    # GNU version of the tar archiving utility
    gnu-tar
    # C code prettifier
    gnu-indent
    # GNU implementation of which utility
    gnu-which
    # GNU grep, egrep and fgrep
    grep
    # Internet file retriever
    wget
    # Bourne-Again SHell, a UNIX command interpreter
    bash
    # GNU compiler collection
    gcc
    # CPU architecture fetching tool
    cpufetch
    # Fast, highly customisable system info script
    neofetch
    # Platform built on V8 to build network applications
    node@18

)

# install from brew.sh using DEV list
echo -n "Installing Gnu and dev packages..."
brew install ${DEV[@]}


# list for what you want install from brew CASK
CASKS=(
    google-chrome
    brave-browser
    visual-studio-code
    vlc
    authy


    #app help you to show shortcuts when hold command button for 5 sec
    cheatsheet
    #clipboard
    clipy
    #to uninstall app totally
    appcleaner
    #Hide menu bar icons to give your Mac a cleaner look
    dozer
    #Move and resize windows in macOS using keyboard shortcuts or snap areas
    rectangle
    # Tool to flash OS images to SD cards & USB drives
    balenaetcher
    # AltTab brings the power of Windows’s “alt-tab” window switcher to macOS.
    alt-tab


)

# install from brew.sh using CASK list
echo -n "Installing cask apps..."
brew install --cask ${CASKS[@]}


# mas is Mac App Store command-line interface
# mas Available commands:

#    account     Prints the primary account Apple ID
#    install     Install from the Mac App Store
#    list        Lists apps from the Mac App Store which are currently installed
#    outdated    Lists pending updates from the Mac App Store
#    purchase    Purchase and download free apps from the Mac App Store
#    search      Search for apps from the Mac App Store
#    signin      Sign in to the Mac App Store
#    signout     Sign out of the Mac App Store
#    uninstall   Uninstall app installed from the Mac App Store

MAS=(
   # Sunset Code-simple text editor
   1480145554
   # Telegram
   747648890
   # Spark – Email App by Readdle
   1176895641
   # Blackmagic Disk Speed Test
   425264550  

)
# install from app store using MAS list
echo -n "Installing apps from App Store..."
mas install ${MAS[@]}


# Minimize animation effect
# Set to scale
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock

#auto-hide the dock and remove its delay on Mac
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0 && killall Dock

# change dock POSITION
defaults write com.apple.Dock orientation -string left
killall Dock

echo -ne "

░██████╗░░█████╗░██████╗░██████╗░██╗░░░██╗███████╗██╗
██╔════╝░██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝██║
██║░░██╗░██║░░██║██║░░██║██████╦╝░╚████╔╝░█████╗░░██║
██║░░╚██╗██║░░██║██║░░██║██╔══██╗░░╚██╔╝░░██╔══╝░░╚═╝
╚██████╔╝╚█████╔╝██████╔╝██████╦╝░░░██║░░░███████╗██╗
░╚═════╝░░╚════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚══════╝╚═╝
"