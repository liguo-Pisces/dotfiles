# @see https://github.com/junegunn/fzf
# Install fzf
if [[ ! -d ~/.fzf/ ]]
then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

# Bootstrap
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setting
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
export FZF_COMPLETION_TRIGGER="~~"
