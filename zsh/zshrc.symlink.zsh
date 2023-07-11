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
export PATH=$HOME/apphub:$PATH

# Alias
alias ls='exa -g'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autoload -Uz promptinit
# promptinit
# prompt minimal

# kitty
#export PATH=~/.local/kitty.app/bin:$PATH

# Load pyenv automatically by appending
# the following to ~/.bash_profile if it exists, otherwise ~/.profile (for login shells) and ~/.bashrc (for interactive shells) :

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

#eval "$(pyenv virtualenv-init -)"

# Podman
#alias docker=podman

# thefuck
eval $(thefuck --alias)

# Go
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
export PATH=$PATH:~/go/bin

# Pnpm
alias pn=pnpm
#export PNPM_HOME="~/.local/share/pnpm"
#export PATH="$PNPM_HOME:$PATH"
