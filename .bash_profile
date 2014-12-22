# Import color shortcuts
source ~/bin/bash_colors.sh

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=~/Envs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# git prompt
if [ -f ~/bin/git-prompt.sh ]; then
    source ~/bin/git-prompt.sh
fi

# git completion
if [ -f ~/bin/git-completion.sh ]; then
    source ~/bin/git-completion.sh
fi

# vagrant completion
if [ -f /usr/local/etc/bash_completion.d/vagrant ]; then
    source /usr/local/etc/bash_completion.d/vagrant
fi

# django completion
if [ -f ~/bin/django_autocomplete.sh ]; then
    source ~/bin/django_autocomplete.sh
fi

# Setup a PIP Cache
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip_downloads

# Add colours to CLI and ls
export CLICOLOR=1
# Uncomment this if you have a dark terminal
export LSCOLORS=GxFxCxDxBxegedabagaced
# Uncomment this if you have a light terminal
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Set Prompt
export PS1="\[$Blue\]\u@\h:\W\[\$(git_color)\]\$(git_branch) \[$Color_Off\]\$ "
