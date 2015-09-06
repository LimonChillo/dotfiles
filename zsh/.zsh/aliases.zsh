# Dotfiles
DOTFILES="$HOME/dotfiles"
alias load="source $HOME/.zshrc"
alias ali="atom $DOTFILES/zsh/.zsh/aliases.zsh"
alias func="atom $DOTFILES/zsh/.zsh/functions.zsh"
alias prompt="atom $DOTFILES/zsh/prompt.zsh-theme"

# Directory shortcuts
alias desk="cd $HOME/Desktop"
alias home="cd $HOME/"
alias dot="cd $HOME/dotfiles"
alias exp="cd $HOME/experiments"
alias pro="cd $HOME/projects"

# Database
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias redis="redis-server /usr/local/etc/redis.conf"

# Git
alias ga='git add'
alias gaa='git add -A'
alias gs="git status -sb"
alias gb="git branch"
alias gbd="git branch -d"
alias gbdd="git branch -D"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gfp="git fetch --prune"
alias gm="git merge"
alias gpu="git push"
alias gpo="git push origin"
alias gpof="git push origin -f"
alias grv="git remote -v"
alias gri="git rebase -i"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsp="git stash pop"
alias gsa="git stash --include-untracked"
alias gsq="git commit —squash"
alias gca="git commit --amend --no-edit"
alias amend="gaa && git commit --amend --no-edit && fpush"
alias undocommit="git reset --soft HEAD~"
alias cleanclean="git reset --hard && git clean -df"
alias ⛵️="gaa && gs && gco"
alias grho="git reset --hard origin/"
alias reflog="git reflog --format='%C(auto)%h %<|(18)%gd%C(blue)%ci%C(reset)  %C(green)%cr%C(reset) %gs (%s)'"
alias gl="git log --decorate"

#Navigation
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#Files
alias o="open ."
alias la="ls -lah"
# alias rmf="rm -rf"
alias a="atom ."
alias work="a && o && stree"
alias dush="du -sh"

# Bundle exec
alias be="bundle exec"
alias s="spring"
alias br="be rspec"
alias sr="s rspec"
alias rrspec="rspec -fd"
alias cbr="COV=1 be rspec"
alias csr="COV=1 s rspec"

# Lint
alias lint="bin/jslint"

# Rails
alias PROD="RAILS_ENV=production"
alias TEST="RAILS_ENV=test"
alias DEV="RAILS_ENV=development"

alias srs="s rails server"
alias rs="bundle exec rails server"
alias src="s rails console"
alias rc="bundle exec rails console"
alias rg="bundle exec rails generate"

alias srr="s rake routes"
alias rr="bundle exec rake routes"
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:migrate:reset"
alias rdsd="rdr && SEED_DEMO=1 bundle exec rake db:seed"
alias sseed="s rake db:migrate:reset && SEED_DEMO=1 s rake db:seed"

# Other
alias getpubkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias cop="be rubocop"
alias cov="open coverage/index.html"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias sudo="nocorrect sudo"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app"
alias show="defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app"

#Linux
alias sagi="sudo apt-get install"
alias killmux="tmux kill-session -t"
alias lsmux="tmux ls"
