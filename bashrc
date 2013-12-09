# .bashrc

alias rm='rm -I'
alias cls=clear
alias lm='ls -al'
alias ll='ls -alk'
alias md=mkdir
alias rd=rmdir

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

alias memcheck='valgrind --quiet --verbose --tool=memcheck --leak-check=full'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]\\$ '

# 换成自己写的感觉更好...
# fortune-zh
#poem_print

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=0 1;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32 :*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;3 1:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm =01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:'

# User specific aliases and functions

if [ -e /usr/bin/vimx ]; then 
	alias vim='/usr/bin/vimx'; 
fi
alias youdao='python /home/younyzhu/.pyton-dict.1.0.1/dict.py'
export CLASSPATH=$CLASSPATH:~/Program/Algorithms/jar/algs4.jar:~/Program/Algorithms/jar/stdlib.jar:

