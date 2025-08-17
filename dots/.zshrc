autoload -Uz compinit
compinit

# tools
alias vim=nvim
alias python=python3

# rust cmd
alias ez=eza
alias ee="eza -lh"
alias ll=ee

alias cat=bat

# k8s
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
alias k=kubectl
alias e=eksctl
alias h=helm

# ollama
alias ol=ollama

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/youniverse/.docker/completions $fpath)
# End of Docker CLI completions

eval "$(starship init zsh)"