# expand your .bashrc-file with these lines

source <(kubectl completion bash)

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='git '
alias k='kubectl '
alias kx='kubectx '

export PATH=~/.kubectx:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
. ~/.kubectl_autocompletion