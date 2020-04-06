
export PATH=$HOME/.local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

[[ $TMUX = "" ]] && export TERM="xterm-256color"

alias ll='ls -alFG'


# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt prompt_subst
PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
