# Setup SSH keys
#
# ~/dotfiles/undo/ssh.sh

#!/bin/bash

SOURCE_SSH_DIR="$HOME/dotfiles/dots/.ssh"
KEYS_DIR_NAME="keys"

# $SOURCE_SSH_DIR should be an symbolic link to a dir
if [ -d "$SOURCE_SSH_DIR" ]; then
    
    # remove keys dir
    path_to_keys_dir="$SOURCE_SSH_DIR/$KEYS_DIR_NAME"
    rmdir $path_to_keys_dir
    
    echo "SSH cleanup completed."
else
    echo "Directory $SOURCE_SSH_DIR DOES NOT exists."
fi
