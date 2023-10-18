
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

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# gpg
export GPG_TTY=$(tty)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ansible
export ANSIBLE_PYTHON_INTERPRETER="$(which python)"

# homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
