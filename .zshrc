# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME=""

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast)

source $ZSH/oh-my-zsh.sh

# Pure theme
autoload -U promptinit; promptinit
prompt pure

export NPM_PACKAGES=$HOME/.npm-packages
export PATH=$NPM_PACKAGES/bin:$PATH

# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsu='git submodule update --init --recursive'

setopt MENU_COMPLETE # immediatelly insert first match

unsetopt auto_name_dirs

# Customize to your needs...
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi

# Using vi keys I want to know what mode I'm currently using.
function zle-line-init zle-keymap-select {
  RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/$TIME}"
  RPS2=$RPS1
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# The next line updates PATH for the Google Cloud SDK.
#source "${HOME}/google-cloud-sdk/path.zsh.inc"

# The next lines enables bash completion in Zsh for gcloud. 
autoload -U compinit compdef
compinit

#source "${HOME}/google-cloud-sdk/completion.zsh.inc"

alias cagol='source /usr/local/bin/cago.sh list'
alias cagor='source /usr/local/bin/cago.sh refresh'
alias cagos='source /usr/local/bin/cago.sh switch'
alias cagou='source /usr/local/bin/cago.sh unset'

alias v='nvim'
