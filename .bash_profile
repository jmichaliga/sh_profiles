source ~/.profile

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] ⚡️ "

export NVM_DIR="/Users/justinmichaliga/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH=~/.local/bin:$PATH
source ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/justinmichaliga/Applications/google-cloud-sdk/path.bash.inc' ]; then source '/Users/justinmichaliga/Applications/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/justinmichaliga/Applications/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/justinmichaliga/Applications/google-cloud-sdk/completion.bash.inc'; fi
