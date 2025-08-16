#!/bin/bash

SCRIPTS=("brew-installs" "install-rust" "stow-all" "setup-ssh" "install-google-fonts" "custom-dirs")

for scirpt in ${SCRIPTS[@]}
do
    echo "Applying $scirpt.sh"
    path_to_script_file="$HOME/dotfiles/scripts/$scirpt.sh"
    
    # set script to be executable
    chmod u+x "$path_to_script_file"

    # run it
    source "$path_to_script_file"

    echo "$scirpt.sh Done"
done
