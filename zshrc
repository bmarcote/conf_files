# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For Wayland
export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
test -d "$XDG_RUNTIME_DIR" || {mkdir "$XDG_RUNTIME_DIR"; chmod 700 "$XDG_RUNTIME_DIR"; }


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


################################################################################
#  Loading plugins

zinit ice depth=1
zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light unixorn/fzf-zsh-plugin


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.config/zsh/p10k.zsh ] && source ~/.config/zsh/p10k.zsh
[ -f ~/.fzf/shell/key-bindings.zsh ] && source ~/.fzf/shell/key-bindings.zsh
[ -f ~/.fzf/shell/completion.zsh ] && source ~/.fzf/shell/completion.zsh


# zinit ice lucid as"program" pick"bin/git-dsf"
# zinit snippet  zdharma/zsh-diff-so-fancy

# Must Load OMZ Git library
zinit snippet OMZL::git.zsh
# Load Git plugin from OMZ
zinit snippet OMZP::vi-mode
zinit snippet OMZP::git
zinit snippet OMZP::fzf
# zinit snippet OMZP::copydir    # JUST BECAUSE NOW IT FAILS
zinit snippet OMZP::copyfile
zinit snippet OMZP::dirhistory
zinit snippet OMZP::autojump
zinit snippet OMZP::taskwarrior
zinit snippet OMZP::zsh-interactive-cd

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

typeset -g POWERLEVEL9K_DIR_FOREGROUND=034
typeset -g POWERLEVEL9K_DIR_BACKGROUND=237
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=034
typeset -g POWERLEVEL9K_DIR_SHORTENED_BACKGROUND=237
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=034
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


################################################################################
# Exports

# Setup
export LANG=en_us.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=nvim
export PAGER=more
export LESS="-erX"
export GIT_PAGER=less

# For the gpg Mutt-SMTP decyrption
export GPG_TTY=$(tty)

# Paths
export PATH=/home/marcote/.local/bin:/usr/local:/usr/local/bin:$PATH:/home/marcote/Programing/evn_support/:/home/marcote/Programing/scripts
#:/usr/local/casa/bin
export CDPATH=.:~:~/Documents/Publicaciones:~/Programing:~/evn:~/evn/eEVN-schedules:~/evn/sessions:~/sources
# for autojump
export FPATH="$FPATH:/usr/local/share/zsh/site-functions/"
# if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
#     . /opt/local/etc/profile.d/autojump.sh
# fi
export XDG_CONFIG_HOME=$HOME/.config
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/include"
export PYTHONPATH=$PYTHONPATH:$HOME/Programing/scripts:$HOME/Programing
# export PYTHONPATH=$PYTHONPATH:$HOME/Programing/picard/picard

export FZF_BASE="$HOME/.fzf"

export MPLCONFIGDIR=$HOME/.config/matplotlib
# export PGPLOT_DIR=/usr/local/pgplot/
# export PGPLOT_FONT=/usr/local/share/pgplot/grfont.dat

#Wayland related options
# export WAYLAND_DISPLAY=wayland-0
export MOZ_WAYLAND_ENABLE=1
export GTK_BACKEND=wayland
export GTK_USE_PORTAL=0
export QT_QPA_PLATFORM=wayland-egl
export TERMINAL=kitty
export XDG_DEFAULT_RULES=evdev
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland
export EWOL_BACKEND=wayland
# export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

export XDG_RUNTIME_DIR=/tmp/`id -u`-runtime-dir
export MESA_LOADER_DRIVER_OVERRIDE=i915
export WLR_DRM_NO_MODIFIERS=1

export MOZ_WAYLAND_ENABLE=1
export GTK_BACKEND=wayland
export GTK_USE_PORTAL=0
export QT_QPA_PLATFORM=wayland-egl
export TERMINAL=kitty
export XDG_DEFAULT_RULES=evdev
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland
export EWOL_BACKEND=wayland

################################################################################
# Loadings

autoload -U compinit; compinit
autoload -Uz zmv age olors
setopt auto_cd
setopt append_history
setopt share_history
setopt hist_expire_dups_first  # expire duplicates first in history
setopt hist_ignore_dups # ignore the duplicate entries in history
setopt hist_reduce_blanks # ignore the blank lines from history
setopt no_case_glob  # case-insensitive searches in path. The opposite is glob_complete
# DISABLE_CORRECTION="true"
setopt correct
# setopt correctall
alias mkdir='nocorrect mkdir'
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias git='nocorrect git'
# Setting vim binddings
setopt vi



################################################################################
# Sourcing

# if [ -f /usr/local/aips/LOGIN.sh ];then
#     source /usr/local/aips/LOGIN.sh
# fi

# X-rays
# export HEADAS=/usr/local/heasoft-6.25/x86_64-pc-linux-gnu-libc2.27
# alias heainit="source $HEADAS/headas-init.sh"


source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/functions.zsh

# Workaround to handle tmux term 256 colors as it is ignoring any set done in .tmux.conf
if [[ $TERM == "screen" ]]
then
    TERM=tmux-256color
fi
# Otherwise keep the current one, most of the cases xterm-256color





