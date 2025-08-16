# Setup SSH keys
#
# ~/dotfiles/scripts/ssh.sh

#!/bin/bash

MY_EMAIL=youniverse.zhao@gmail.com

SOURCE_SSH_DIR="$HOME/dotfiles/dots/.ssh"
KEYS_DIR_NAME="keys"

# $SOURCE_SSH_DIR is a dir (don't need to worry about ~/.ssh)
if [ -d "$SOURCE_SSH_DIR" ] ; then
    # the .ssh folder is ready, proceed with the setup
    
    chmod 700 "$SOURCE_SSH_DIR"

    # Create keys dir
    path_to_keys_dir="$SOURCE_SSH_DIR/$KEYS_DIR_NAME"
    mkdir -p $path_to_keys_dir

    # All key pair names that need to be created
    MY_GITHUB_KEY="$(whoami)@$(hostname).github-id_ed25519"
    KEY_NAMES=("$MY_GITHUB_KEY")

    # Generate keys for each key name
    for key_name in ${KEY_NAMES[@]}
    do
        PATH_TO_PRIVATE_KEY="$path_to_keys_dir/$key_name"
        PATH_TO_PUBLIC_KEY="$PATH_TO_PRIVATE_KEY.pub"
    
        # check if SSH key already exists
        if [ -f $PATH_TO_PRIVATE_KEY ]; then
            echo "SSH key $PATH_TO_PRIVATE_KEY already exists."
        else
            echo "SSH key $PATH_TO_PRIVATE_KEY does not exist, generating ..."
            ssh-keygen -t ed25519 -C "$MY_EMAIL" -f "$PATH_TO_PRIVATE_KEY"
        fi

        # set proper permissions for the new key pair
        chmod 600 $PATH_TO_PRIVATE_KEY
        chmod 644 $PATH_TO_PUBLIC_KEY
    done

    # Create ~/dotfiles/dots/.ssh/config from config.template
    path_to_my_github_key="~/.ssh/$KEYS_DIR_NAME/$MY_GITHUB_KEY"
    path_to_ssh_config_file="$HOME/dotfiles/dots/.ssh/config"
    sed "s#<PATH_TO_MY_GITHUB_KEY>#$path_to_my_github_key#g" "$path_to_ssh_config_file.template" > "$path_to_ssh_config_file"
    
    echo "SSH setup complete!"
else
    echo "Directory $SOURCE_SSH_DIR DOES NOT exist, nothing to do."
fi
