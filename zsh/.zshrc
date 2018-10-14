# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

    echo "Creating a zgen save"

    # prezto options
    # zgen prezto editor key-bindings 'vi'
    zgen prezto prompt theme 'sorin'
    zgen prezto syntax-highlighting color 'yes'
    zgen prezto utility:ls color 'yes'

    # prezto and modules
    zgen prezto
    zgen prezto archive
    zgen prezto git
    zgen prezto docker
    zgen prezto rsync
    zgen prezto directory
    zgen prezto history
    zgen prezto utility
    zgen prezto completion  # must be loaded after utility
    zgen prezto autosuggestions
    # zgen prezto tmux
    zgen prezto command-not-found
    zgen prezto fasd  # loaded after completion
    zgen prezto syntax-highlighting  # before prompt and history-substring-search
    zgen prezto history-substring-search
    zgen prezto prompt

  zgen save
fi

# added by Anaconda3 installer
export PATH="/Users/nathan/anaconda3/bin:$PATH"

# pipenv补全
#eval "$(pipenv --completion)"

JAVA_HOME=$(/usr/libexec/java_home)
PATH=$JAVA_HOME/bin:$PATH
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME
export CLASSPATH
export PATH
export SPARK_HOME="/Users/nathan/runtime/spark-2.2.0-bin-hadoop2.7"

alias sd='ssh dev'
alias sy='ssh ym'
alias pc='proxychains4'
