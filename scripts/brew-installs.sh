# Install apps using Homebrew
#
# ~/dotfiles/scripts/brew-installs.sh

#!/bin/bash

# install homebrew
brew -v
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# install apps

brew install git curl make trash nvim openssl
brew install bat eza

brew install zsh starship

brew install aws-cdk kubectl helm

brew install go

brew install --cask visual-studio-code jetbrains-toolbox postman docker lens warp cloudflare-warp raycast

brew install --cask firefox firefox@developer-edition arc google-chrome tor-browser

brew install --cask calibre obsidian

brew install --cask wechat telegram vlc dropbox
