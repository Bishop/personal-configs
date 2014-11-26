export LC_ALL=en_US.UTF-8

alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'

alias st='open -a Sublime\ Text'
alias atom='open -a Atom'

function psc {
	if [ -z "$1" ]
	then
	  ps axo pid,ppid,user,command
	else
	  ps axo pid,ppid,user,command | grep "$1" | grep -v "grep $1" | grep -v "bin/psc"
	fi
}

function title {
      printf "\033]0;%s\007" "$1"
}

function deploy {
    bundle exec cap $1 deploy
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
