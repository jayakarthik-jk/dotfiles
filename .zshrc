# custom script files
for script_file in ~/.config/settings/*.sh; do
  . "$script_file"
done

# Environment variables
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export EDITOR=nvim
export JAVA_HOME=/opt/homebrew/opt/openjdk@11
. "$HOME/.cargo/env"

# Path
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Applications/kdiff3.app/Contents/MacOS:$PATH"
# Created by `pipx` on 2024-12-17 02:05:31
export PATH="$PATH:/Users/jaya-21208/.local/bin"

# fzf
source <(fzf --zsh)

# starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# prompt-bottom
