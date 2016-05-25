#rbenv
export RBENV_ROOT="$HOME/.rbenv"
PATH="$RBENV_ROOT/bin:$PATH"

#phpenv
export PHPENV_ROOT="$HOME/.phpenv"
PATH="$PATH:$PHPENV_ROOT/bin"

#ndenv
export NODEENV_ROOT="$HOME/.ndenv"
PATH="$PATH:$NODEENV_ROOT/bin"

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PATH:$PYENV_ROOT/bin"

export PATH
eval "$(rbenv init -)"
eval "$(phpenv init -)"
eval "$(ndenv init -)"
eval "$(pyenv init -)"

# export PATH="$HOME/.nodebrew/current/bin:$PATH"
pathtojava=$(readlink -e $(which javac))
export JAVA_HOME=${pathtojava%/*/*}
export PATH="$JAVA_HOME/bin:$PATH"
# export PATH="$PATH:$HOME/android-sdk-linux/tools"
