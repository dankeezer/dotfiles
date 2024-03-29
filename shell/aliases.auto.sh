alias b 'bundle'
alias be 'bundle exec'
alias gist 'gist -p'
alias git '/usr/local/bin/git'
alias gti 'git'
# alias irssi 'env TERM screen-256color irssi'
alias r 'ruby'

alias mux 'tmuxinator'
alias redraw 'stty sane; clear'
alias reload 'redraw'
alias speedtest 'curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias subl '/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias tmux 'tmux -2'
alias vi 'vim'

alias local 'env FASTKIT_LOCAL_ENGINES=1'
alias ic 'ibmcloud'
alias i 'icdctl'
alias fk 'fastkit'
alias fki 'fastkit interactive'
alias fkr 'fastkit restart'
alias fks 'fastkit status all'
alias fkt 'fastkit test'
alias fkp 'fastkit setup proxy & fastkit start proxy'

# Easier navigation: .., ..., ...., ....., ~ and -
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# List all files colorized in long format
alias l 'ls -lF {$colorflag}'

# List all files colorized in long format, excluding . and ..
alias la 'ls -lAF {$colorflag}'

# List only directories
alias lsd 'la -d */'