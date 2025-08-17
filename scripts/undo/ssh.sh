#!/bin/bash

# Setup SSH keys
#
# ~/dotfiles/scripts/undo/ssh.sh

path_to_project_ssh_dir="$HOME/dotfiles/dots/.ssh"
keys_dir_name="keys"

# $path_to_project_ssh_dir should be an symbolic link to a dir
if [ -d "$path_to_project_ssh_dir" ]; then
    
    # remove keys dir
    path_to_keys_dir="$path_to_project_ssh_dir/$keys_dir_name"
    rmdir "$path_to_keys_dir"
    
    echo "SSH cleanup completed."
else
    echo "Directory $path_to_project_ssh_dir DOES NOT exists."
fi
