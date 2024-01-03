if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

alias ll 'exa -lbah --git'
alias bat batcat
set -g -x BAT_THEME gruvbox-dark


# Node version manager: https://github.com/Schniz/fnm
# Make sure the fnm bin is in the path
fnm env | source

# Set llvm to version 14 - Odin-lang requires this currently
#set -g -x LLVM_CONFIG /usr/bin/llvm-config-14
#alias llvm-config llvm-config-14
#fish_add_path /home/ole-urfels/.local/share/Odin/

fish_add_path ~/.cargo/bin/
fish_add_path ~/.cargo/env

function rmnvim
    rm -rf ~/.config/nvim
    mkdir ~/.config/nvim
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim
    printf "Deleted the following directories:\n~/.config/nvim\n~/.local/share/nvim\n~/.local/state/nvim\n~/.cache/nvim\n\nCreated the following directory:\n~/.config/nvim"
end

function pushdots
    function add_and_push
        git add .
        git commit -m 'update config'
        git push
    end
    
    function push_folder
        echo -e "\n$argv:\n"
        cd ~/.config/$argv/; add_and_push
    end

    push_folder nvim
    push_folder kitty
    push_folder fish

    cd
end
