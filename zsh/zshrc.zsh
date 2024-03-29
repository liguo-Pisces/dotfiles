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
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Dotfiles
export DOTFILES=$(dirname $(dirname $(realpath $0)))
config_files=($DOTFILES/**/*.zsh)
for file in ${(M)config_files:#*/setting.zsh}
do
  source $file
done

unset config_files

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autoload -Uz promptinit
# promptinit
# prompt minimal

export PATH=$HOME/apphub:$PATH

# pnpm
export PNPM_HOME="/home/liguo/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

#$(thefuck --alias)

# eval $(thefuck --alias)

alias ls='exa -g'

# kitty
export PATH=~/.local/kitty.app/bin:$PATH
