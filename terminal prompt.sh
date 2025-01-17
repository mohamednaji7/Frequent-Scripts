echo "export PS1='$(if [ -n "$VIRTUAL_ENV" ]; then echo "\[\033[01;35m\]($(basename $VIRTUAL_ENV)) "; fi)\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;34m\]\h:\[\033[01;36m\]\w\[\033[00m\]\$ '" >> ~/.bashrc

echo 'export PS1="\[\e[1;32m\](\$(basename \$CONDA_DEFAULT_ENV)) \[\e[1;34m\]\u@\h:\[\e[1;33m\]\w\n\[\e[0m\]\$ "' >> ~/.bashrc
export PS1="\[\e[1;32m\](\$(basename \$CONDA_DEFAULT_ENV)) \[\e[1;34m\]\u@\h:\[\e[1;33m\]\w\n\[\e[0m\]\$ "

export PS1="\[\e[1;32m\](unsloth_env) \[\e[1;34m\]\u@\h:\[\e[1;33m\]\w\n\[\e[0m\]\$ "

export PS1="\[\e[1;32m\](unsloth_env) \[\e[1;34m\]\u@\h:\[\e[1;33m\]\w\[\e[0m\]\$ "
