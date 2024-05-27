alias gf='git fetch --prune'
alias gff='git fetch --prune --all'

alias gup='git pull-rebase'
alias gm='git merge'

alias ga='git add -u'
alias gaa='git add-remove-all'
alias gap='git add-interactive'

alias gp='git push'
alias gpf='git push --force-with-lease'

alias gc='git commit -v'
alias gc!='git commit --amend -v --date="$(date)"'

alias grc='git reset HEAD^'
alias grh='git reset HEAD --hard'
alias grmu='git remove-untracked'

alias gco='git checkout'
alias gcm='git checkout master'

alias grb='git rebase'
alias grbi='git rebase-interactive'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'

alias gb='git branch'

alias gs='git status-diff'
alias gst='git status'
alias gd='git diff --ignore-space-at-eol -b -w --ignore-blank-lines'

function gbd() {
  git diff --ignore-space-at-eol -b -w --ignore-blank-lines $(git merge-base $1 HEAD) $1
}

