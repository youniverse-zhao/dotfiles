# Use stow to remove symbolic links for everything
#
# ~/dotfiles/undo/stow.sh

#!/bin/bash

cd "$HOME/dotfiles"; stow -D dots