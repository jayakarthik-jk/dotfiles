# Environment variables
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
export EDITOR=nvim
export JAVA_HOME=/opt/homebrew/opt/openjdk@11
. "$HOME/.cargo/env"

# Path
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Applications/kdiff3.app/Contents/MacOS:$PATH"

# custom script files
for script_file in ~/.config/settings/*.sh; do
  . "$script_file"
done

# fzf
source <(fzf --zsh)

# starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
