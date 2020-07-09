# .bashrc
HISTSIZE= HISTFILESIZE= # Infinite bash history
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

GREEN="\[$(tput setaf 87)\]"
RESET="\[$(tput sgr0)\]"


# User specific aliases and functions
export PS1="${GREEN}[\W] \h: ${RESET}"
# Lists monitors connected to pc
alias lm="xrandr | grep ' connected' | cut -f1 -d ' '"
# Print list of all files, one column, without quotes, showing direcotires with a slask indicator, and sorted by extension. 
alias lf="ls -1aNpX --group-directories-first"
