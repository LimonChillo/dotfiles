function clip {
  echo -n "$($1)" | pbcopy
}

function mk {
  mkdir -p "$1" && cd "$1"
}

function copy {
 cat "$1" | xclip -selection clipboard
}

#Git
function gco {
  git commit -m "$*"
}

function pull {
  if [ -z "$1" ]
    then
      git pull --rebase
    else
      git checkout "$1" && git pull --rebase && git checkout -
  fi
}

function fix {
  git commit --fixup ":/$*"
}

function fixup {
  git commit --fixup "$*"
}

function fixd {
  git commit --fixup "$(git rev-parse HEAD)"
}

function fixes {
  commit -m "${*:2}, fixes #$1"
}

function fixes! {
  commit -m "${*:2}, fixes !$1"
}

function push {
  git push origin "$(git symbolic-ref --short HEAD)" -u
}

function fpush {
  git push origin --force-with-lease "$(git symbolic-ref --short HEAD)"
}

function 🚀 {
 gaa && gco "$@" && push && echo -e "\nThank you for using"
}
