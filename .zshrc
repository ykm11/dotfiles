autoload -U compinit; compinit
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt histignorealldups
setopt always_last_prompt
setopt complete_in_word
setopt IGNOREEOF
export LANG=ja_JP.UTF-8
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz colors
colors

# aliases
alias u='cd ../'
alias uu='cd ../../'

alias l='ls -l'
alias c='clear'
alias grep="grep --color=auto"
alias sl=ls
alias vim=nvim

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.ykmplaying/"

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"


