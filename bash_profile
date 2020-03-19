if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=$HOME/.local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad

export TERM="xterm-256color"

alias ll='ls -al'


# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
