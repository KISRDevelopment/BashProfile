# *************
# Setup Colors 
#**************

# Import color shortcuts
if [ -f bash_colors.sh ]; then
    source bash_colors.sh
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
if [ -f git-prompt.sh ]; then
    source git-prompt.sh
fi

# git completion
if [ -f git-completion.sh ]; then
    source git-completion.sh
fi

# django completion
if [ -f django_autocomplete.sh ]; then
    source django_autocomplete.sh
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

