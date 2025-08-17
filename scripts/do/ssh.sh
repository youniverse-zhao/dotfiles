#!/bin/bash

# Setup SSH keys
#
# ~/dotfiles/scripts/do/ssh.sh

my_email=youniverse.zhao@gmail.com

path_to_project_ssh_dir="$HOME/dotfiles/dots/.ssh"
keys_dir_name="keys"

# $path_to_project_ssh_dir is a dir (don't need to worry about ~/.ssh)
if [ -d "$path_to_project_ssh_dir" ] ; then
    # the .ssh folder is ready, proceed with the setup
    
    chmod 700 "$path_to_project_ssh_dir"

    # Create keys dir
    path_to_keys_dir="$path_to_project_ssh_dir/$keys_dir_name"
    mkdir -p "$path_to_keys_dir"

    # All key pair names that need to be created
    new_github_key_pair_name="$(whoami)@$(hostname).github-id_ed25519"
    KEY_NAMES=("$new_github_key_pair_name")

    # Generate keys for each key name
    for key_name in "${KEY_NAMES[@]}"
    do
        path_to_private_key="$path_to_keys_dir/$key_name"
        path_to_public_key="$path_to_private_key.pub"
    
        # check if SSH key already exists
        if [ -f "$path_to_private_key" ]; then
            echo "SSH key $path_to_private_key already exists."
        else
            echo "SSH key $path_to_private_key does not exist, generating ..."
            ssh-keygen -t ed25519 -C "$my_email" -f "$path_to_private_key"
        fi

        # set proper permissions for the new key pair
        chmod 600 "$path_to_private_key"
        chmod 644 "$path_to_public_key"
    done

    # Create ~/dotfiles/dots/.ssh/config from config.template
    path_to_my_github_key=~/".ssh/$keys_dir_name/$new_github_key_pair_name"
    path_to_ssh_config_file="$HOME/dotfiles/dots/.ssh/config"
    sed "s#<PATH_TO_MY_GITHUB_KEY>#$path_to_my_github_key#g" "$path_to_ssh_config_file.template" > "$path_to_ssh_config_file"
    
    echo "SSH setup complete!"
else
    echo "Directory $path_to_project_ssh_dir DOES NOT exist, nothing to do."
fi
