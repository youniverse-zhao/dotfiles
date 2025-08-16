# Setup SSH keys
#
# ~/dotfiles/scripts/setup-ssh.sh

#!/bin/bash

SSH_DIR="$HOME/.ssh"
KEYS_DIR_NAME="keys"
MY_EMAIL=youniverse.zhao@gmail.com

MY_GITHUB_KEY="$(whoami)@$(hostname).github-id_ed25519"
KEY_NAMES=("$MY_GITHUB_KEY")

# $SSH_DIR should be an symbolic link to a dir
if [ -L "$SSH_DIR" ] && [ -d "$SSH_DIR" ]; then
    chmod 700 "$SSH_DIR"

    # create keys dir
    path_to_keys_dir="$SSH_DIR/$KEYS_DIR_NAME"
    mkdir -p $path_to_keys_dir

    # For each key name    
    for key_name in ${KEY_NAMES[@]}
    do
        PATH_TO_PRIVATE_KEY="$path_to_keys_dir/$key_name"
        PATH_TO_PUBLIC_KEY="$PATH_TO_PRIVATE_KEY.pub"
        
        # Check if SSH key already exists
        if [ ! -f $PATH_TO_PRIVATE_KEY ]; then
            echo "Generating new SSH key..."
            ssh-keygen -t ed25519 -C "$MY_EMAIL" -f "$PATH_TO_PRIVATE_KEY"
        else
            echo "SSH key $PATH_TO_PRIVATE_KEY already exists."
        fi

        # Set proper permissions
        chmod 600 $PATH_TO_PRIVATE_KEY
        chmod 644 $PATH_TO_PUBLIC_KEY
    done

    # Create ~/.ssh/config from template
    path_to_my_github_key="$HOME/.ssh/$KEYS_DIR_NAME/$MY_GITHUB_KEY"
    path_to_ssh_config_file="$HOME/dotfiles/dots/.ssh/config"
    sed "s#<PATH_TO_MY_GITHUB_KEY>#$path_to_my_github_key#g" "$path_to_ssh_config_file.template" > "$path_to_ssh_config_file"

    echo "SSH setup complete!"
else
    echo "Directory $SSH_DIR DOES NOT exists."
fi
