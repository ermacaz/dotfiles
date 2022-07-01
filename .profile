
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[1;32m\]\u@\h \[\033[1;96m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "

