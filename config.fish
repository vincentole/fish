if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fish
set fish_greeting
alias fishconf 'nvim ~/.config/fish/config.fish'
alias fishsource 'source ~/.config/fish/config.fish'

# System programs
alias ll 'exa -lbah --git'
fish_add_path ~/.local/bin/

alias bat batcat
set -g -x BAT_THEME gruvbox-dark

# Shell scripts
alias update '~/.shell_scripts/update.sh'
alias dots '~/.shell_scripts/dots.sh'

# Fnm - node version manager
# Make sure the fnm bin is in the path
fnm env | source

# Odin lang
set -g -x LLVM_CONFIG /usr/bin/llvm-config-17
alias llvm-config llvm-config-17
alias clang clang-17
fish_add_path ~/.odin/
fish_add_path ~/.lsp/ols/

# Rust
fish_add_path ~/.cargo/bin/
fish_add_path ~/.cargo/env/

# Go
fish_add_path /usr/local/go/bin/

# Keymapp
fish_add_path ~/.keymapp/

# Neovim
alias vi nvim
alias vim nvim
alias nvimconf 'nvim ~/.config/nvim/init.lua'
alias rmnvim '~/.shell_scripts/rmnvim.sh'

# Emacs
fish_add_path ~/.config/emacs/bin/
