# If no argument, equivalent to "cd .."
# Otherwise, moves up n directories, where n is the first argument
# Courtesy Juan Pablo Sarmiento
up() {
  local back=""
  for i in $(seq 1 $1); do back+="../"; done
  cd $back
}

# Undo last commit but preserve changes
# No arguments
undo-commit() {
  local diff_against_previous_commit=$(git diff HEAD~1)
  git reset --hard HEAD~1
  echo $diff_against_previous_commit | patch -p1
}

# Generate random alphanumeric password of specified length
# and copy to clipboard.
# Tee to stderr so it still shows up in terminal output.
# http://www.techbar.me/linux-shell-tips/
# https://stackoverflow.com/a/13805066/12265969
pass() {
  LANG=c < /dev/urandom tr -dc A-Za-z0-9 | head -c $1 | tee /dev/fd/2 | pbcopy
  echo
}

backup() {
  rm -rf $1.bak
  cp -r $1 $1.bak
}

restore() {
  rm -rf $1
  cp -r $1.bak $1
}

remove() {
  shred $1 && rm -v $1
}

# Delete all local git branches except `main` and branches starting with `onkur`
git-prune-branches() {
  local dry_run=false
  if [[ "$1" == "--dry-run" || "$1" == "-n" ]]; then
    dry_run=true
  fi

  local branches
  branches=$(git branch | grep -v '^\*' | sed 's/^ *//' | grep -v '^main$' | grep -v '^onkur')

  if [[ -z "$branches" ]]; then
    echo "No branches to delete."
    return 0
  fi

  if $dry_run; then
    echo "Would delete the following branches:"
    echo "$branches" | while read -r branch; do
      echo "  $branch"
    done
  else
    echo "$branches" | while read -r branch; do
      git branch -D "$branch"
    done
  fi
}

# Colorized cat; use ccat if available, else fallback to system cat
cat() {
  if command -v ccat >/dev/null 2>&1; then
    ccat "$@"
  else
    \cat "$@"
  fi
}
