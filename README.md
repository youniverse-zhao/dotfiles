# README

There are 2 sets of files in this repo: the static dot file configs and the setup script.

The dotfiles are expected to be used as-is, without any modification. A simple symbolic link will do the work. While the setup script should be executable and are used to create the symbolic links and other setup operations.

## Setup a machine

🍉 Clone this repo:

```shell
git clone git@github.com:youniverse-zhao/dotfiles.git ~/dotfiles
```

🍉 Run the _.setup.sh_ file:

```shell
chmod u+e ~/dotfiles/setup.sh; ~/dotfiles/setup.sh
```

🍉 Add the new Github key (_~/.ssh/keys/xxx.pub_) to Github (https://github.com/settings/keys).
