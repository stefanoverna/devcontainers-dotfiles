source /usr/share/bash-completion/completions/git

alias gf='git fetch --prune'
alias gff='git fetch --prune --all'

alias gup='git pull-rebase'

alias gm='git merge'
__git_complete gm _git_merge

alias ga='git add -u'
__git_complete ga _git_add

alias gaa='git add-remove-all'
alias gap='git add-interactive'

alias gp='git push'
__git_complete gp _git_push

alias gpf='git push --force-with-lease'
__git_complete gpf _git_push

alias gc='git commit -v'
alias gc!='git commit --amend -v --date="$(date)"'

alias grc='git reset HEAD^'
alias grh='git reset HEAD --hard'
alias grmu='git remove-untracked'

alias gco='git checkout'
__git_complete gco _git_checkout

alias gcm='git checkout master'

alias grb='git rebase'
__git_complete grb _git_rebase

alias grbi='git rebase-interactive'
__git_complete grbi _git_rebase

alias grbc='git rebase --continue'
alias grba='git rebase --abort'

alias gb='git branch'
__git_complete gb _git_branch

alias gs='git status'
__git_complete gs _git_status

alias gd='git diff --ignore-space-at-eol -b -w --ignore-blank-lines'

function gbd() {
  git diff --ignore-space-at-eol -b -w --ignore-blank-lines $(git merge-base $1 HEAD) $1
}

