#!/bin/bash

# Install apps using Homebrew
#
# ~/dotfiles/scripts/do/brew.sh

# install homebrew
if command -v brew &> /dev/null ; then
    echo "Homebrew is installed"
else
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# install apps

brew install git curl make trash nvim openssl
brew install bat eza

brew install zsh starship

brew install aws-cdk kubectl helm

brew install go nvm

brew install --cask visual-studio-code jetbrains-toolbox postman docker lens warp cloudflare-warp raycast

brew install --cask firefox firefox@developer-edition arc google-chrome tor-browser

brew install --cask calibre obsidian

brew install --cask wechat telegram vlc dropbox
