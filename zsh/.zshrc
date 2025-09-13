# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    z
    kitty
    catimg
    dircycle
    sudo
    docker
    rust
    copyfile
    copypath
    colorize
)

source $ZSH/oh-my-zsh.sh

path+=('home/weltschmerz/.local/bin')
export PATH

eval "$(starship init zsh)"

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -n gastly -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -


# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias cook="clear & cargo run"
alias veda-up-ssd='sudo mount //xxx/xxx/ /mnt/xxx/ssd -o user=xxx,pass=xxx,user'
alias veda-up-hdd='sudo mount //xxx/xxx/ /mnt/xxx/hdd -o user=xxx,pass=xxx,user'
export MANPAGER='nvim +Man!'
export PATH="$PATH:$HOME/go/bin"

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/weltschmerz/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/weltschmerz/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh