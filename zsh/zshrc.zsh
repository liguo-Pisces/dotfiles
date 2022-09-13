# Prezto
if [[ ! -d ~/.zprezto/ ]]
then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]
then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Env
export EDITOR=vim

export PATH=$HOME/.local/bin:$PATH

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


