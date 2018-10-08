PS1='\[\033[03;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -a -m'
alias gd='git diff'
alias go='git checkout '
alias gl='git lg '
alias gls='git lg --stat '
alias rm='rm -i'

source <(kubectl completion bash)
