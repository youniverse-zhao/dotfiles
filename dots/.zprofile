# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# go@1.18 install with Homebrew
# export PATH="/opt/homebrew/opt/go@1.18/bin:$PATH"
# export GOROOT_BOOTSTRAP="/Users/youniverse/Workspace/_toolbox/golang/bootstrap"
export GOOS=darwin
export GOARCH=arm64
export GOPRIVATE=github.com/youniverse-zhao
export GOROOT="/opt/homebrew/opt/go/libexec"

# export GOROOT="/Users/youniverse/Workspace/_toolbox/golang/goroot"

# Rust
. "$HOME/.cargo/env"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$PATH:/Users/youniverse/.local/bin"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

# Local Github **Personal Access Token** for Github docker packages access
# CR is short for Container Registry
export CR_PAT=""
export CR_USER="youniverse-zhao"
function github-cr-login() {
    echo $CR_PAT | docker login ghcr.io -u $CR_USER --password-stdin
}
