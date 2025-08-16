# README

There are 2 sets of files in this repo: the static dot file configs and the setup script.

The dotfiles are expected to be used as-is, without any modification. A simple symbolic link will do the work. While the setup script should be executable and are used to create the symbolic links and other setup operations.

## Setup a machine

🍉 Clone this repo:

```shell
git clone https://github.com/youniverse-zhao/dotfiles.git ~/dotfiles
```

🍉 Run the _do.sh_ script:

```shell
chmod u+x ~/dotfiles/do.sh; ~/dotfiles/do.sh
```

🍉 Add the new Github key (_~/.ssh/keys/xxx.pub_) to Github (https://github.com/settings/keys).

## Cleanup a machine:

🍉 Run the _undo.sh_ script:

```shell
chmod u+x ~/dotfiles/undo.sh; ~/dotfiles/undo.sh
```
