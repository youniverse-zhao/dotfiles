# Use stow to create symbolic links for everything
#
# ~/dotfiles/do/stow.sh

#!/bin/bash

brew install stow
cd "$HOME/dotfiles"; stow dots