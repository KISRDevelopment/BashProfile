# *************
# Setup Colors 
#**************

# Import color shortcuts
if [ -f "$PROFILE_HOME/bash_colors.sh" ]; then
    source "$PROFILE_HOME/bash_colors.sh"
fi

# Add colours to CLI and ls
export CLICOLOR=1
# Uncomment this if you have a dark terminal
export LSCOLORS=GxFxCxDxBxegedabagaced
# Uncomment this if you have a light terminal
#export LSCOLORS=ExFxBxDxCxegedabagacad



#***************************************
# Source Prompts and Completion Scripts
#***************************************

# git prompt
if [ -f "$PROFILE_HOME/git-prompt.sh" ]; then
    source "$PROFILE_HOME/git-prompt.sh"
fi

# git completion
if [ -f "$PROFILE_HOME/git-completion.sh" ]; then
    source "$PROFILE_HOME/git-completion.sh"
fi

# django completion
if [ -f "$PROFILE_HOME/django_autocomplete.sh" ]; then
    source "$PROFILE_HOME/django_autocomplete.sh"
fi



# ******************
# Setup a PIP Cache
#*******************

export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip_downloads



#*************************
# Prepare and Set  Prompt
#*************************

# (blue) <user>@<host>:<current working directory>
PS1="\[$Blue\]\u@\h:\W"

# Set branch name color based on branch state
PS1+="\[\$(git_color)\]"

# Append branch name
PS1+="\$(git_branch)"

# Reset color and add trailing $
PS1+=" \[$Color_Off\]\$ "

# Set Prompt 
export PS1

