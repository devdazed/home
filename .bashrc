[ -n "$PS1" ] && source ~/.bash_profile
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/rbradberry/.travis/travis.sh ] && source /Users/rbradberry/.travis/travis.sh
