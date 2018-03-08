#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Settings
#
#

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
  || _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
  || _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
  || _git_log_brief_format='%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'

# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
  || _git_status_ignore_submodules='none'

#
# Aliases
#

if ! zstyle -t ':prezto:module:git:alias' skip 'yes'; then
  # Git
  alias g='git'

  # Branch (b)
  alias gb='git branch'
  alias gba='git branch --all --verbose'
  alias gbc='git checkout -b'
  alias gbd='git branch --delete'
  alias gbD='git branch --delete --force'
  alias gbl='git branch --verbose'
  alias gbL='git branch --all --verbose'
  alias gbm='git branch --move'
  alias gbM='git branch --move --force'
  alias gbr='git branch --move'
  alias gbR='git branch --move --force'
  alias gbs='git show-branch'
  alias gbS='git show-branch --all'
  alias gbv='git branch --verbose'
  alias gbV='git branch --verbose --verbose'
  alias gbx='git branch --delete'
  alias gbX='git branch --delete --force'

  # Commit (c)
  alias gc='git commit --verbose'
  alias gca='git commit --verbose --all'
  alias gcm='git commit --message'
  alias gcS='git commit -S --verbose'
  alias gcSa='git commit -S --verbose --all'
  alias gcSm='git commit -S --message'
  alias gcam='git commit --all --message'
  alias gco='git checkout'
  alias gcO='git checkout --patch'
  alias gcf='git commit --amend --reuse-message HEAD'
  alias gcSf='git commit -S --amend --reuse-message HEAD'
  alias gcF='git commit --verbose --amend'
  alias gcSF='git commit -S --verbose --amend'
  alias gcp='git cherry-pick --ff'
  alias gcP='git cherry-pick --no-commit'
  alias gcr='git revert'
  alias gcR='git reset "HEAD^"'
  alias gcs='git show'
  alias gcl='git-commit-lost'
  alias gcy='git cherry -v --abbrev'
  alias gcY='git cherry -v'

  # Conflict (C)
  alias gCl='git --no-pager diff --name-only --diff-filter=U'
  alias gCa='git add $(gCl)'
  alias gCe='git mergetool $(gCl)'
  alias gCo='git checkout --ours --'
  alias gCO='gCo $(gCl)'
  alias gCt='git checkout --theirs --'
  alias gCT='gCt $(gCl)'

  # Data (d)
  alias gd='git ls-files'
  alias gdc='git ls-files --cached'
  alias gdx='git ls-files --deleted'
  alias gdm='git ls-files --modified'
  alias gdu='git ls-files --other --exclude-standard'
  alias gdk='git ls-files --killed'
  alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

  # Fetch (f)
  alias gf='git fetch'
  #alias gfa='git fetch --all'
  #alias gfc='git clone'
  #alias gfcr='git clone --recurse-submodules'
  #alias gfm='git pull'
  #alias gfr='git pull --rebase'

  # Flow (F)
  alias gfi='git flow init'
  alias gff='git flow feature'
  alias gfb='git flow bugfix'
  alias gfl='git flow release'
  alias gfh='git flow hotfix'
  alias gfs='git flow support'

  alias gffl='git flow feature list'
  alias gffs='git flow feature start'
  alias gfff='git flow feature finish'
  alias gffp='git flow feature publish'
  alias gfft='git flow feature track'
  alias gffd='git flow feature diff'
  alias gffr='git flow feature rebase'
  alias gffc='git flow feature checkout'
  alias gffm='git flow feature pull'
  alias gffx='git flow feature delete'

  alias gfbl='git flow bugfix list'
  alias gfbs='git flow bugfix start'
  alias gfbf='git flow bugfix finish'
  alias gfbp='git flow bugfix publish'
  alias gfbt='git flow bugfix track'
  alias gfbd='git flow bugfix diff'
  alias gfbr='git flow bugfix rebase'
  alias gfbc='git flow bugfix checkout'
  alias gfbm='git flow bugfix pull'
  alias gfbx='git flow bugfix delete'

  alias gfll='git flow release list'
  alias gfls='git flow release start'
  alias gflf='git flow release finish'
  alias gflp='git flow release publish'
  alias gflt='git flow release track'
  alias gfld='git flow release diff'
  alias gflr='git flow release rebase'
  alias gflc='git flow release checkout'
  alias gflm='git flow release pull'
  alias gflx='git flow release delete'

  alias gfhl='git flow hotfix list'
  alias gfhs='git flow hotfix start'
  alias gfhf='git flow hotfix finish'
  alias gfhp='git flow hotfix publish'
  alias gfht='git flow hotfix track'
  alias gfhd='git flow hotfix diff'
  alias gfhr='git flow hotfix rebase'
  alias gfhc='git flow hotfix checkout'
  alias gfhm='git flow hotfix pull'
  alias gfhx='git flow hotfix delete'

  alias gfsl='git flow support list'
  alias gfss='git flow support start'
  alias gfsf='git flow support finish'
  alias gfsp='git flow support publish'
  alias gfst='git flow support track'
  alias gfsd='git flow support diff'
  alias gfsr='git flow support rebase'
  alias gfsc='git flow support checkout'
  alias gfsm='git flow support pull'
  alias gfsx='git flow support delete'

  # Grep (g)
  alias gg='git grep'
  alias ggi='git grep --ignore-case'
  alias ggl='git grep --files-with-matches'
  alias ggL='git grep --files-without-matches'
  alias ggv='git grep --invert-match'
  alias ggw='git grep --word-regexp'

  # Index (i)
  alias gia='git add'
  alias giA='git add --patch'
  alias giu='git add --update'
  alias gid='git diff --no-ext-diff --cached'
  alias giD='git diff --no-ext-diff --cached --word-diff'
  alias gii='git update-index --assume-unchanged'
  alias giI='git update-index --no-assume-unchanged'
  alias gir='git reset'
  alias giR='git reset --patch'
  alias gix='git rm -r --cached'
  alias giX='git rm -rf --cached'

  # Log (l)
  alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
  alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
  alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
  alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
  alias glg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
  alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
  alias glc='git shortlog --summary --numbered'

  # Merge (m)
  alias gm='git merge'
  alias gmC='git merge --no-commit'
  alias gmF='git merge --no-ff'
  alias gma='git merge --abort'
  alias gmt='git mergetool'

  # Push (p)
  alias gp='git push'
  alias gpf='git push --force-with-lease'
  alias gpF='git push --force'
  alias gpa='git push --all'
  alias gpA='git push --all && git push --tags'
  alias gpt='git push --tags'
  alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
  alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

  # Rebase (r)
  alias gr='git rebase'
  alias gra='git rebase --abort'
  alias grc='git rebase --continue'
  alias gri='git rebase --interactive'
  alias grs='git rebase --skip'

  # Remote (R)
  alias gR='git remote'
  alias gRl='git remote --verbose'
  alias gRa='git remote add'
  alias gRx='git remote rm'
  alias gRm='git remote rename'
  alias gRu='git remote update'
  alias gRp='git remote prune'
  alias gRs='git remote show'
  alias gRb='git-hub-browse'

  # Stash (s)
  alias gs='git stash'
  alias gsa='git stash apply'
  alias gsx='git stash drop'
  alias gsX='git-stash-clear-interactive'
  alias gsl='git stash list'
  alias gsL='git-stash-dropped'
  alias gsd='git stash show --patch --stat'
  alias gsp='git stash pop'
  alias gsr='git-stash-recover'
  alias gss='git stash save --include-untracked'
  alias gsS='git stash save --patch --no-keep-index'
  alias gsw='git stash save --include-untracked --keep-index'

  # Submodule (S)
  alias gS='git submodule'
  alias gSa='git submodule add'
  alias gSf='git submodule foreach'
  alias gSi='git submodule init'
  alias gSI='git submodule update --init --recursive'
  alias gSl='git submodule status'
  alias gSm='git-submodule-move'
  alias gSs='git submodule sync'
  alias gSu='git submodule foreach git pull origin master'
  alias gSx='git-submodule-remove'

  # Tag (t)
  alias gt='git tag'
  alias gtl='git tag -l'

  # Working Copy (w)
  alias gws='git status --ignore-submodules=${_git_status_ignore_submodules} --short'
  alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules}'
  alias gwd='git diff --no-ext-diff'
  alias gwD='git diff --no-ext-diff --word-diff'
  alias gwr='git reset --soft'
  alias gwR='git reset --hard'
  alias gwc='git clean -n'
  alias gwC='git clean -f'
  alias gwx='git rm -r'
  alias gwX='git rm -rf'
fi
