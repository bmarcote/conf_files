export PATH=$PATH:/opt/casa-release-5.5.0-149.el7/bin/

# export LD_LIBRARY_PATH=.:/jop93_0/marcote/local/usr/lib:/jop93_0/marcote/local/usr/lib64:/usr/lib64/:/jop93_0/marcote/local/usr/lib64:/usr/include/
export PYTHONPATH=/jop93_0/scripts:/opt:/opt/Obit/python:$PYTHONPATH

export SCHED=/usr/local/sched_11.5
# export SCHED=/usr/local/sched_mod
export PGPLOT_DIR=$SCHED/PGPLOT/linux64gfortran_5.3.1
# export PGPLOT_DIR=/usr/local/pgplot
export PGPLOT_FONT=$PGPLOT_DIR/grfont.dat
alias sched="$SCHED/bin/sched"
# alias schedpy="/opt/sched-python/bin/sched.py"
# export MC_DATADIR=/jop93_0/marcote/local/usr/share/mc
export MIR=/usr/local/miriad
export TEMPO2=/usr/local/tempo2


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# export TERM=xterm-256color

# To avoid segmentation fault in CASA when using the ? help command
# by default PAGER is set to less
export PAGER=more
# . ~/Downloads/miriad/MIRRC.sh
# export PATH=$MIRBIN:$PATH

. /aips/LOGIN.SH
# The compiled version does not localize the executable...
alias aips="/aips/31DEC17/LNX64/SYSTEM/JOP93/aips"
################. $MIR/MIRRC.sh
# . /astroware/atnf_miriad.sh


# X-rays
export HEADAS=/usr/local/heasoft-6.25/x86_64-pc-linux-gnu-libc2.27
alias heainit="source $HEADAS/headas-init.sh"
# . $HEADAS/headas-init.sh

# alias ciao="source /usr/local/ciao-4.11/bin/ciao.sh"
# alias sas="source /usr/local/sas/xmmsas_20180620_1732/setsas.sh"


alias terminator_home="terminator -l Home"

alias ls="ls --color=auto"
alias z="zathura"
alias ev="evince"
alias i="ipython3 --pylab"
alias t="clear;task -BLOCKED"

function yf () {
    # Creates a new task in TaskWarrior for a yellow folder with the given name and M prio.
    task add pro:jive tag:yf prio:M "Yellow Folder: ${(U)1}" $@[2,-1]
}

function check_schedule () {
    # Creates a new task in TaskWarrior for a yellow folder with the given name and M prio.
    task add pro:jive tag:sch prio:M "Check Schedule: ${(U)1}" $@[2,-1]
}

function doy () {
    # Returns the date given a day of the year (DOY). It requires the year (YYYY) and DOY.
    if [[ ! ( -n $1 && -n $2 ) ]];then
        echo "Two parameters are required:"
        echo " - Year (YYYY)."
        echo " - DOY."
        exit
    fi
    python -c "import datetime as dt;print(dt.datetime.strptime('$1 $2', '%Y %j').strftime('%d-%m-%Y'))"
}


# More is less
# alias more="less"

alias logout="i3-msg exit"
alias reboot="systemctl reboot"
alias shutdown="systemctl poweroff"

alias papers="cd /jop93_0/Documents/Publications/articles"
alias talks="cd /jop93_0/Documents/Publications/talks"
alias papeleo="cd /jop93_0/Documents/Papeleo"
alias proposals="cd /jop93_0/Documents/Proposals"
alias sources="cd /jop93_0/sources"
export PAPERS=/jop93_0/Documents/Publications/articles
export TALKS=/jop93_0/Documents/Publications/talks
export PAPELEO=/jop93_0/Documents/Papeleo
export PROPOSALS=/jop93_0/Documents/Proposals
export SOURCES=/jop93_0/sources

# JIVE - EVN
# alias eee='ssh jops@eee -t "source ~/marcote/.cshrc;tcsh -l"'
# alias eeegx='ssh -Y jops@eee -t "source ~/marcote/.cshrc;tcsh -l"'
alias ccsbeta='ssh -Y jops@ccs -t "HOME=/home/jops/marcote;zsh -l"'
alias ccs='ssh -Y jops@ccs -t "HOME=/home/jops/marcote;zsh -l"'
alias pipe='ssh pipe@jop83 -t "setenv HOME /jop83_0/pipe/in/marcote;zsh -l"'
alias pipegx='ssh -Y pipe@jop83 -t "setenv HOME /jop83_0/pipe/in/marcote;zsh -l"'
alias frb='ssh jops@frb'
alias frbgx='ssh -Y jops@frb'
alias eee='ssh jops@eee -t "HOME=/data0/marcote;zsh -l"'
alias eeegx='ssh -Y jops@eee -t "HOME=/data0/marcote;zsh -l"'

alias mount_obelix="sudo mount /dev/sde1 /media/Obelix"
alias ansible_susci="ansible-playbook $HOME/.ansible/playbooks/apt.yml --ask-become-pass"

# alias cep3tunnel='ssh -f -N -L 1347:lhd002:22 bmarcote@portal.lofar.eu'
# alias jop93tunnel='ssh -f -N -L 1679:jop93:22 marcote@portal.astron.nl'
#
alias eVLBIscheds='jop78:/jop78_2/scratch/eVLBI/schedules/'

# Weather forecast
alias weather_groningen='curl wttr.in/Groningen'
alias weather_dwingeloo='curl wttr.in/Dwingeloo'
alias weather_anero='curl wttr.in/Anero'
alias weather_barcelona='curl wttr.in/Barcelona'

alias -s tex=vim
alias -s pdf=zathura
alias -s html=w3m
alias -s org=w3m
alias -s md=vim
alias -s txt=vim


# export TERM="xterm-256color"
PROMPT='%B%F{green}%-1~%f:%F{blue}%c%f%b # '

# some promt with only arrow and on the right dir:
# precmd() { print "" }
# PS1="⟩"
# RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"


# Workaround to handle tmux term 256 colors as it is ignoring any set done in .tmux.conf
if [[ $TERM == "screen" ]]
then
    TERM=tmux-256color
fi
# Otherwise keep the current one, most of the cases xterm-256color

# Custom settings for zsh
# autoload -Uz compinit
autoload -U zmv
autoload -U age
setopt auto_cd
setopt correctall
setopt append_history
setopt share_history
alias mkdir='nocorrect mkdir'
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias git='nocorrect git'

# Style for prompt: https://github.com/bhilburn/powerlevel9k
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS=false
# POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_first_and_last
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='green4'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='grey7'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='green4'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='grey7'
POWERLEVEL9K_DIR_HOME_FOREGROUND='green4'
POWERLEVEL9K_DIR_HOME_BACKGROUND='grey7'
POWERLEVEL9K_DIR_ETC_FOREGROUND='green4'
POWERLEVEL9K_DIR_ETC_BACKGROUND='grey7'

POWERLEVEL9K_STATUS_OK=false
DEFAULT_USER=marcote

POWERLEVEL9K_USER_DEFAULT_FOREGROUND='green4'
POWERLEVEL9K_USER_SUDO_FOREGROUND='orange'
POWERLEVEL9K_USER_ROOT_FOREGROUND='red'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='navyblue'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green4'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_HIDE_TAGS=false
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)


# Antigen bundles

if [[ ! -e $HOME/.antigen/antigen.zsh ]]
then
    curl https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen/antigen.zsh
fi

source $HOME/.antigen/antigen.zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen theme muse
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply


alias gc="git checkout"
alias gm="git checkout master"
