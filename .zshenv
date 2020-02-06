# For OS X policy
# http://www.zsh.org/mla/users/2015/msg00725.html
setopt no_global_rcs

# Add the path from brew doctor warning
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# For Mojave
export PATH="/usr/sbin:$PATH"

# Ignore dupicated entry
typeset -U path cdpath fpath manpath

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# postgresql
export PGDATA=/usr/local/var/postgres

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# TimeZone
export TZ=utc

# Android
#export ANDROID_HOME="$HOME/Library/Android/sdk"
#
# JAVA
#export JAVA_HOME="`/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home`"
#
#export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
#
# Python
#export PYTHONPATH="/usr/local/bin/python"
#
# pyenv
#eval "$(pyenv init -)"
