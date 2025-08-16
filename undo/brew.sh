# Uninstall apps using Homebrew
#
# ~/dotfiles/undo/brew.sh

#!/bin/bash

brew uninstall --cask visual-studio-code jetbrains-toolbox postman docker lens warp cloudflare-warp raycast

brew uninstall --cask firefox firefox@developer-edition arc google-chrome tor-browser

brew uninstall --cask calibre obsidian

brew uninstall --cask wechat telegram vlc dropbox

brew uninstall bat eza

brew uninstall zsh starship

brew uninstall aws-cdk kubectl helm

brew uninstall go

brew uninstall git curl make trash nvim openssl

# uninstall homebrew
# https://docs.brew.sh/FAQ#how-do-i-uninstall-homebrew
if command -v brew &> /dev/null ; then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
else
    echo "Homebrew is not installed"
fi
