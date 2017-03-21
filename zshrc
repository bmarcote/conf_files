export PATH=/opt/local/bin/:/usr/local/bin:$PATH:Users/hawky/scripts/:/Library/TeX/texbin/:/usr/local/sched/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/bin/root/lib:/usr/local/bin/mars:/usr/local/scisoft/packages/ccfits/lib:/usr/local/bin/mfits
#export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH

. /Users/hawky/aips/LOGIN.SH
. /opt/local/miriad/MIRRC.sh
export PATH=$MIRBIN:$PATH
# Add to ipython importing path the folder with my scripts
export PYTHONPATH=~/scripts
export SCHED=/usr/local/sched
export PGPLOT_DIR=$SCHED/PGPLOT/osx_intel_5.3.1

#export LSGMRT=/Volumes/Rocks/folre/radio/LS5039/GMRT/201307/
#export LSGMRT=~/radio/LS5039_GMRT/201307/
#export LSIGMRT=~/radio/LSI61303_GMRT/
#export HESSMGRTf=/Volumes/Rocks/folre/radio/HESSJ0632057/GMRT/
#export HESSMGRT=~/radio/HESSJ0632_GMRT/
#export HESSMGRT=~/radio/HESSJ0632_VLA/
#export LSILOFAR=~/radio/LSI61303_LOFAR/
#export LSILOFARf=/Volumes/Rocks/folre/radio/LSI61303/LOFAR/RSM/
#export HDLBA=/Volumes/Rocks/folre/radio/HD93129A/LBA/2008/
export FOLRE=/Volumes/Rocks/folre/radio/
export EDITOR=vim
# Alias to load ipython --pylab only writing 'i'
alias i="ipython --pylab"
alias ls="ls -G"
alias pulse-load="launchctl load /Library/LaunchAgents/net.juniper.pulsetray.plist"
alias fv="open -a fv"
alias ds9="open -a \"SAOImage DS9\""
alias sched=$SCHED/bin/sched
alias pulse_load="launchctl load /Library/LaunchAgents/net.juniper.pulsetray.plist"
alias pulse_unload="launchctl unload /Library/LaunchAgents/net.juniper.pulsetray.plist"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
	xterm-color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#	;;
#*)
#	;;
#esac
export TERM="xterm-256color"
PROMPT='%B%F{119}%n%f:%F{blue}%c%f%b # '

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

