# https://github.com/pyenv/pyenv

# Install pyenv
if [[ ! -d ~/.pyenv/ ]]
then
   git clone --depth 1 https://github.com/pyenv/pyenv.git ~/.pyenv
   cd ~/.pyenv && src/configure && make -C src
fi

# Bootstrap
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setting
export PYTHONPYCACHEPREFIX="$HOME/.cache/cpython/"
