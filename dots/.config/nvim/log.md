# Setting Up Vim (NeoVim) for Mac

- neovim: https://neovim.io/

### Installation

```shell
brew install vim nvim
```

### Settings

Put the NeoVim config in _.config/nvim_

```shell
mkdir -p .config/nvim
```

Init the directory:

- an _init.lua_ file
  - this file exists in the root directory
  - there is also one _init.lua_ in each sub-directory
- a _lua_ directory

The configturation is done via [Lua plugins] - _init.lua_

how is NeoVim config linked to Vim❓

#### prerequisites

neovim requires luarocks

```shell
brew update

brew install luarocks
```

- ⚠️ neovim requires Lua 5.1 while what I have is 5.4.8 - how can I maintain a Lua installation just for neovim❓
- not available from homebrew, need to install from source

```shell
curl -LO http://www.lua.org/ftp/lua-5.1.5.tar.gz
tar xvzf lua-5.1.5.tar.gz
cd lua-5.1.5/src
make macosx
mv lua ~/.local/bin/lua-5.1
```

`:Lazy health` should be all OK now

#### Plugins

- fuzzy search
- go to file
- file tree
- colour scheme
- language server

are these bulit-in❓

- go to definition
- `:terminal`

#### Language Servers

Rust
