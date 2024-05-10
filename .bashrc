#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'


#PS1='[\u@\h \W]\$ '
PS1='\[\e[32m\][\u@\h \W]\[\e[0m\]$ '

# ask for confirmation before executing rm command for each file 
# -i means ask for confirmation , v  means confirmation before  removing  file 

alias rm='rm -i'

# confirm before overwriting something

alias cp="cp -i"                         


# confirm before moving file  

alias mv='mv -i'

# set autocomplete case insensitive
bind -s 'set completion-ignore-case on'

# Set unique colors for ls output


export LS_COLORS='di=34:*.pdf=36:*.csv=35:*.zip=1;35:*.jpg=1;31:*.png=1;31:*.jpeg=1;31:*.gif=1;31:*.md=1;33'

