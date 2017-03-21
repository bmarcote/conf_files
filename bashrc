export PATH=/jop93_0/marcote/local/anaconda3/bin/:/jop93_0/marcote/local/texlive/2015/bin/x86_64-linux:$PATH:/jop93_0/marcote/local/bin:/jop93_0/marcote/local/usr/local/bin:/jop93_0/marcote/local/usr/bin:/astroware/bin/:/jop93_0/marcote/local/casa-release-4.5.0-el6/bin/:/jop93_0/marcote/local/obit-1.1.534-1-64b



export LD_LIBRARY_PATH=.:/jop93_0/marcote/local/usr/lib:/jop93_0/marcote/local/usr/lib64:/usr/lib64/:/jop93_0/marcote/local/usr/lib64:/usr/include/:/jop93_0/marcote/local/obit-1.1.534-1-64b/lib64
##########. /Users/hawky/aips/LOGIN.SH
export HOME2=/jop93_0/marcote
export PYTHONPATH=PYTHONPATH:$HOME2/scripts

export SCHED=/aps3/opt/share/sched_11.3U1
export PGPLOT_DIR=/aps3/opt/share/pgplot
export PGPLOT_FONT=/aps3/opt/share/pgplot/grfont.dat
export MC_DATADIR=/jop93_0/marcote/local/usr/share/mc

# To avoid segmentation fault in CASA when using the ? help command
# by default PAGER is set to less
export PAGER=more
# LaTeX distribution
export INFOPATH=$INFOPATH:/jop93_0/marcote/local/texlive/2015/texmf-dist/doc/info
export MANPATH=$MANPATH:/jop93_0/marcote/local/texlive/2015/texmf-dist/doc/man


. /jop93_0/marcote/local/aips/LOGIN.SH
. /auto/astroware/atnf_miriad.sh

alias sched="/aps3/opt/bin64/sched"
#export SCHED=/usr/local/bin/sched_11.4
#export PGPLOT_DIR=$SCHED/PGPLOT/osx_intel_5.3.1
#alias python="/usr/bin/python"
alias home="cd /jop93_0/marcote"
alias i="ipython --pylab"
alias locate="locate -d /jop93_0/marcote/.config/mlocale/mlocate.db"
alias py27="source activate py27"
alias py27d="source deactivate"

alias cep3tunnel='ssh -f -N -L 1347:lhd002:22 bmarcote@portal.lofar.eu'
alias jop93tunnel='ssh -f -N -L 1679:jop93:22 marcote@portal.astron.nl'
# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#	xterm-color) color_prompt=yes;;
#esac
#
#export TERM="xterm-color"
PS1="\[\033[01;32m\]\u\[\033[01;34m\] \W\$ \[\033[00m\]"


