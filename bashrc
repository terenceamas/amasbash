### imported from Terence's bash setting

# user defined colorful and useful prompt
PS1=`~/bin/prompt`

# modify color for ls di=01;36(01;34), ln=02;36(01;36)
if [ -f "$HOME/.dircolors" ] ; then
	. $HOME/.dircolors
else
	eval `dircolors $HOME/.dir_colors/dircolors.ryan`
	#eval `dircolors $HOME/.dir_colors/dircolors.ansi-universal`
	#eval `dircolors $HOME/.dir_colors/dircolors.ansi-dark`
	#eval `dircolors $HOME/.dir_colors/dircolors_ubuntu`
	#eval `dircolors $HOME/.dir_colors/dircolors.nord`
	#eval `dircolors $HOME/.dir_colors/dircolors.bliss`
fi

export TERM=xterm-256color        # for common 256 color terminals (e.g. gnome-terminal)
#export TERM=screen-256color       # for a tmux -2 session (also for screen)
#export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session

# Set vim as default editor
EDITOR=vim
export EDITOR

# User specific aliases and functions
alias sc='screen -d -r'

# Used for AMIT project
#PATH=/opt/crosstool/uClibc_v5te_le_gcc_3_3_5/bin/:$PATH
#PATH=/home2/terence/ATC3/rtl865x/toolchain/rsdk/linux/:$PATH
#export RD_LEVEL=1
#export PATH=/opt/buildroot-gcc342/bin:$PATH
# alias cdemake='~/bin/cdemake'
# alias cd='. ~/bin/cdecd'
# alias svnlog='svn log | less'
# alias mkm='make menuconfig'
# alias makeallg='make clean ; clear ; DEBUG_LEVEL=9 make ; make glue'
# alias makeall='make clean ; clear ; make ; make glue'
# alias makedistclean='rm -rf linux/root image/* rootfs/root busybox/root; make clean'
# alias makehttp='make clean ; make ; make glue ; cp httpd.exe ~/download/wbr'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

cd ~/
