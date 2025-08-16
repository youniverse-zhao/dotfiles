# Use stow to create symbolic links for everything
#
# ~/dotfiles/scripts/stow-all.sh

#!/bin/bash

brew install stow
cd "$HOME/dotfiles/dots"; stow .