export LC_ALL=en_US.UTF-8

# Set a default prompt of: user@host and current_directory
PS1='\[\e]0;\W\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

alias ll='ls -Al'
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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash 
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
complete -F _ssh pcap

PATH=/usr/local/sbin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# G O
PATH=$PATH:$HOME/.Go/bin
export GOPATH=~/.Go
