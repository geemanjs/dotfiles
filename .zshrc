export TERM="xterm-256color"
export DEFAULT_USER="$(whoami)"

ANTIBODY_HOME="$(antibody home)"
export ZSH="$ANTIBODY_HOME"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh


source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

fpath=( "$HOME/.zfunctions" $fpath )

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=6


# source <(kubectl completion zsh)

# ZSH basic options
unsetopt HIST_VERIFY
unsetopt prompt_cr prompt_sp

# Bind UP & DoWN arrow keys for search history 
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

source ~/.bash_profile


# Prevent slow startup
# Thanks https://gist.github.com/gfguthrie/9f9e3908745694c81330c01111a9d642
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"
export PATH="/usr/local/sbin:$PATH"
