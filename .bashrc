# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
export VISUAL=nvim

set -o vi

bind 'set show-mode-in-prompt on'
bind -m vi-insert '"jk": "\e"'

bind 'set vi-cmd-mode-string \1\e[6 q\2'
bind 'set vi-ins-mode-string \1\e[4 q\2'

alias ls='ls --color=auto'

echo -e "\e[38;2;71;128;97m
  ██▒   █▓ ▒█████   ██▓▓█████▄ 
  ▓██░   █▒▒██▒  ██▒▓██▒▒██▀ ██▌
   ▓██  █▒░▒██░  ██▒▒██▒░██   █▌
    ▒██ █░░▒██   ██░░██░░▓█▄  █▌
     ▒▀█░  ░ ████▓▒░░██░░▒████▓ 
     ░ ▐░  ░ ▒░▒░▒░ ░▓   ▒▒▓  ▒ 
     ░ ░░    ░ ▒ ▒░  ▒ ░ ░ ▒  ▒ 
       ░░  ░ ░ ░ ▒   ▒ ░ ░ ░  ░ 
        ░      ░ ░   ░     ░    
       ░                 ░      
\e[0m"

PS1=' \W › '

if [ -z "$XDG_RUNTIME_DIR" ]; then
	export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime
	if [ ! -d "XDG_RUNTIME_DIR" ]; then
		mkdir -pm 0700 "$XDG_RUNTIME_DIR"
	fi
fi

# Created by `pipx` on 2026-05-18 01:37:06
export PATH="$PATH:/home/wagnrrt/.local/bin"
