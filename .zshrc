# Set local in English
export LC_ALL=en_US.UTF-8

# Save command history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Perform the cd command to the dir.
# e.g. If there is a tmp dir
# % tmp
setopt AUTO_CD

# Make cd push the old directory onto the directory stack.
# e.g.
# % cd + (TAB)
# % cd - (TAB)
# 1 -- /Users/mttr/go
# 2 -- /Users/mttr/bin
# 3 -- /Users/mttr/xxx
#
# Move 2nd history dir
# % cd +2
setopt AUTO_PUSHD

# Disable some unnecessary settings
setopt IGNORE_EOF
setopt NO_FLOW_CONTROL
setopt NO_BEEP

# Don't push multiple copies of the same directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS
# If a new command line being added to the history list duplicates an older one, the older command is removed from the list.
setopt HIST_IGNORE_ALL_DUPS
# Share command history on opened zsh shells
setopt SHARE_HISTORY
# Remove command lines from the history list when the first character on the line is a space, or when one of the expanded aliases contains a leading space.
setopt HIST_IGNORE_SPACE
# Remove superfluous blanks from each command line being added to the history list.
setopt HIST_REDUCE_BLANKS
# Print  eight bit characters literally in completion lists, etc. For Japanese
setopt PRINT_EIGHT_BIT

##################
#
# Emacs keybind
#
##################

bindkey -e

##################
#
# Change Ctrl+w: Delete a word before slash
# Add slash in word-chars to recognize as a select char
#
##################

autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# Menu select mode
zstyle ':completion:*:default' menu select=3

# Match word regardless of capital or small char
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Ignore the current dir for the completion.
zstyle ':completion:*' ignore-parents parent pwd ..

# Complete command after sudo
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

##################
#
# ZSHCONTRIB
# user contributions to zsh
#
###################

#
# REMEMBERING RECENT DIRECTORIES
# cdr: Move to recent moved dir
#
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*:*:cdr:*:*' menu selection
zstyle ':chpwd:*' recent-dirs-max 100

####################
#
# man
#
####################

# Search keyword func
# e.g. % zman SHARE_HISTORY
function zman() {
  PAGER="less -g -s '+/^ {7}"$1"'" man zshall
}

####################
#
# Peco
# https://github.com/peco/peco
#
####################

#
# Cmmand history with peco
# ^x^r
#

function execute-history-with-peco() {
    local item
    item=$(builtin history -n -r 1 | peco --query="$LBUFFER")

    if [[ -z "$item" ]]; then
        return 1
    fi

    BUFFER="$item"
    CURSOR=$#BUFFER
}
zle -N execute-history-with-peco
bindkey '^x^r' execute-history-with-peco

#
# Change directory by recently changed directory wiht peco
# ^xb
#
function peco-cdr() {
    local item
    item=$(cdr -l | sed 's/^[^ ]\{1,\} \{1,\}//' | peco)

    if [[ -z "$item" ]]; then
        return 1
    fi

    BUFFER="cd -- $item"
    CURSOR=$#BUFFER
    zle accept-line
}
zle -N peco-cdr
bindkey '^xb' peco-cdr

#
# Go to go src
#  ^x^g
#

function goto-go-src-with-peco() {
    local item
    item=$(ghq list --full-path | peco --query="$LBUFFER")

    if [[ -n "$item" ]]; then
      BUFFER="cd $item"
      zle accept-line
    fi
}
zle -N goto-go-src-with-peco
bindkey '^x^g' goto-go-src-with-peco

#######################################################
#
# antigen
#   https://github.com/zsh-users/antigen
#   homebrew support
#
#######################################################

if [[ -f /usr/local/share/antigen/antigen.zsh ]]; then
    source /usr/local/share/antigen/antigen.zsh

    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-completions src
    antigen bundle mttrs/zsh-git-prompt

    antigen apply
fi

###############################
#
# autoenv
#   https://github.com/kennethreitz/autoenv
#   homebrew support
#
###############################

if [[ -f $HOME/.autoenv/activate.sh ]]; then
    source /usr/local/opt/autoenv/activate.sh
fi

####################################
#
# PROMPT
#
# %d: current dir PATH
# %~: Same as %d. But show home dir as ~.
# %#: user -> %, user user -> #
#
####################################

####################################
#
# Awesome git prompt
# - Manage by antigen
#
###############################

PROMPT='mttr@%~$(git_super_status)$ '

######################################################################
#
# Initialize completion for the current session when called directly.
#
######################################################################

autoload -Uz compinit
compinit

####################
#
# Alias
#
####################

alias be='bundle exec'
alias chrome='/Applications/Google\ Chrome.app'
alias cp='cp -v'
alias d='docker'
alias di='diff'
alias g='git'
alias h='heroku'
alias la='ls -a'
alias ll='ls -l'
alias ls='ls -G'
alias r='rails'
alias sed='gsed'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'

# Global alias
alias -g G='| grep'
alias -g H='| head'
alias -g L='| less'
alias -g N='> /dev/null'
alias -g T='| tail'

####################
#
# Directory alias
# e.g. % ~xxx
#
####################
# hash -d xxx=~/test

####################################
#
# Copy to clipboard
#
# % cat xxx C
# If you want to copy just a part of it, use sed...
# % sed -n '2,5p' xxx C
# source: http://mollifier.hatenablog.com/entry/20100317/p1
#
####################################

if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi

# for completion
fpath=(/usr/local/share/zsh-completions $fpath)

# rbenv
# Check out the source from github
# https://github.com/rbenv/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
