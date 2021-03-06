# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# export JAVA dir
#export JAVA_HOME=/usr/java/jdk-11.0.2/

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH:$JAVA_HOME"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Set git autocompletion and PS1 integration
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ramonn/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ramonn/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ramonn/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ramonn/google-cloud-sdk/completion.bash.inc'; fi

export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
