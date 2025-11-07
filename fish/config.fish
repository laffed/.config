# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

set fish_key_bindings fish_user_key_bindings

# zoxide
zoxide init --cmd j fish | source

#starship
starship init fish | source

# cargo
source "$HOME/.cargo/env.fish" 

# asdf 
source /opt/homebrew/opt/asdf/libexec/asdf.fish


