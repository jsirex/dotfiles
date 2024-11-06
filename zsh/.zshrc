# Profiling ZSH
#zmodload zsh/zprof

export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/proj/jsirex/oh-my-zsh-custom

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="fino-time"

DISABLE_AUTO_UPDATE=true
DISABLE_AUTO_TITLE=true
DISABLE_UNTRACKED_FILES_DIRTY="true"

COMPLETION_WAITING_DOTS="false"

HISTSIZE=50000
SAVEHIST=50000

# Plugins Tunning
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_IGNORE_WIDGETS+=(backward-kill-word)

plugins=(starship git extract debian sudo terraform systemd virtualenv z zsh-autosuggestions)
#plugins=(starship git extract debian sudo terraform systemd virtualenv z)

source $ZSH/oh-my-zsh.sh

# autoload -U compinit && compinit

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
source $HOME/.rvm/scripts/rvm

# Call profile statistic
#zprof
