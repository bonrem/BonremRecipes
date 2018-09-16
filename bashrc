#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1=">>\[\033[32m\]\u \[\033[0m\] ( \W )\$ "
#BASH_COMPLETION

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).


#----ALIAS
alias la="ls -a"
alias ll="ls -l"
alias git="hub"
alias mux="tmuxinator"
alias workflow="mux workflow"
alias projects="mux projects"
alias vps="mux vps"
alias ls="ls --color"
alias xcompile="xmonad --recompile"
alias tupi="tupitube.desk"
alias HBZ=' cvlc -q http://shoutcast.citrus3.com:8116/;stream.mp3  >/dev/null '

#transparency
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
[ -n "st" ] && transset-df --id "$WINDOWID" >/dev/null
#[ -n "guake" ] && transset-df --id "$WINDOWID" >/dev/null
#python virtualEnv
export WORKON_HOME=~/.Envs
export EDITOR=vim
export PATH=~/.bin:$PATH
source /usr/bin/virtualenvwrapper.sh

#functions
#++++tmux
layout()
( 
tmux list-windows 
)
#+++BASHRC
load()
{ 
  	source ~/.bashrc 
}
#+++++++xmonad
window() 
{
	xprop | grep WM_CLASS
}

# Path to the bash it configuration

# Lock and Load a custom theme file
# location /.bash_it/themes/

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
