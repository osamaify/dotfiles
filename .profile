#!/bin/sh

export TERMINAL="st"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export LESSHISTFILE="-"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export WEECHAT_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/weechat"

export PATH="$HOME/bin:$HOME/.local/bin:$CARGO_HOME/bin:$GOPATH/bin:$HOME/.deno/bin:$HOME/.yarn/bin:$PATH"

export SUDO_ASKPASS="$HOME/.local/bin/dmenuaskpass"

export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '\e[01;31m')"
export LESS_TERMCAP_md="$(printf '%b' '\e[01;31m')"
export LESS_TERMCAP_me="$(printf '%b' '\e[0m')"
export LESS_TERMCAP_se="$(printf '%b' '\e[0m')"
export LESS_TERMCAP_so="$(printf '%b' '\e[01;44;33m')"
export LESS_TERMCAP_ue="$(printf '%b' '\e[0m')"
export LESS_TERMCAP_us="$(printf '%b' '\e[01;32m')"

export MOZ_USE_XINPUT2="1"
export _JAVA_AWT_WM_NONREPARENTING=1

[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
