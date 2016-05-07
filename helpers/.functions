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

# Generates random alphanumeric password of specified length
# http://www.techbar.me/linux-shell-tips/
pass() {
  LANG=c < /dev/urandom tr -dc A-Za-z0-9 | head -c $1; echo
}

backup() {
  rm -rf $1.bak
  cp -r $1 $1.bak
}

restore() {
  rm -rf $1
  cp -r $1.bak $1
}
