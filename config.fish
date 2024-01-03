if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

alias ll 'exa -lbah --git'
alias bat batcat
set -g -x BAT_THEME gruvbox-dark

# Set llvm to version 14 - Odin-lang requires this currently
#set -g -x LLVM_CONFIG /usr/bin/llvm-config-14
#alias llvm-config llvm-config-14
#fish_add_path /home/ole-urfels/.local/share/Odin/

function rmnvim
    rm -rf ~/.config/nvim
    mkdir ~/.config/nvim
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim
    printf "Deleted the following directories:\n~/.config/nvim\n~/.local/share/nvim\n~/.local/state/nvim\n~/.cache/nvim\n\nCreated the following directory:\n~/.config/nvim"
end
