# Environment variables
export SCRIPTS_HOME=~/.config/scripts

# Java
# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

export BUN_INSTALL=$HOME/.bun

# export PNPM_HOME="$HOME/.local/share/pnpm"
# export SERVER_HOME=$HOME/.config/MickeyLite

# homebrew env variables
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Rust
# export RUST_BACKTRACE=1

export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

export EDITOR=nvim

# Path
# export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$SCRIPTS_HOME
export PATH=$PATH:$BUN_INSTALL/bin
# export PATH=$PATH:$PNPM_HOME
# export PATH=$PATH:$SERVER_HOME/bin
export PATH=$PATH:/opt/nvim-linux64/bin
export PATH=$PATH:$HOME/.local/bin

export PATH=$PATH:$HOME/applications/public/
export PATH=$PATH:$HOME/applications/idea/bin
export PATH=$PATH:$HOME/applications/eclipse
export PATH=~/.npm-global/bin:$PATH
