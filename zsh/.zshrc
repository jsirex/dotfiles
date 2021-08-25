# For emacs tramp this prevents hang
if [[ "$TERM" == "dumb" ]]; then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    PS1='$ '
    return
fi

# Profiling ZSH
# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/proj/jsirex/oh-my-zsh-custom

# My fallback theme
ZSH_THEME="fino-time"

# Tune Oh My ZSH
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_UPDATE=true
COMPLETION_WAITING_DOTS="false"

ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_STRATEGY=history
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_IGNORE_WIDGETS+=(backward-kill-word)

plugins=(git extract backup mvn vagrant rvm rust cargo debian docker docker-compose sudo terraform systemd virtualenv z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load RVM into a shell session *as a function*
alias loadrvm="source $HOME/.rvm/scripts/rvm"

# Add user local bin
path=(~/.cargo/bin ~/.local/bin $path)

autoload -U compinit && compinit

# Call profile statistic
# zprof
