# Get the current git branch
get_git_branch() {
  local branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  echo $branch
}

# Assemble the Git part of prompt
git_prompt () {
  # Not Git, don't add to prompt
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi

  git_branch=$(get_git_branch)

  if git diff --quiet 2>/dev/null >&2; then
    git_color="$c_git_clean"
  else
    git_color="$c_git_dirty"
  fi

  echo " [$git_color$git_branch${c_reset}]"
}

# Get Node Version
get_node_version () {
  echo $(node -v)
}

# Add Node to prompt
node_prompt () {
  echo " $c_node_version$(get_node_version)"
}

# Make a directory && cd into that directory
mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Rename all directories to lowercase
lowercaseAllDirs () {
  for f in *; do
    if [[ -d "$f" && ! -L "$f" ]]; then
      local LOWERDIR="$( echo $f | tr '[:upper:]' '[:lower:]')"

      if [[ "$f" != "$LOWERDIR" ]]; then
        mv "$f" "$LOWERDIR" && echo "$f has been lowercased to $LOWERDIR"
      fi
    fi
  done
}

# Find all active launchctl processes/files
launchctlFind () {
  grep -B 1 -A 1 "active count = 1$" <<< "$(launchctl dumpstate)"
}

# Check sum
sha256check () {
    if [[ $(pbpaste) == $(shasum -b -a 256 "$@" | awk '{print $1}') ]]; then echo 'match'; fi ;
}

#  nth-commit.sh
#  Usage: `nth-commit.sh n [branch]`
nth-commit() {
  branch=${2:-'master'}
  SHA1=$(git rev-list $branch | tail -n $1 | head -n 1)
  git checkout $SHA1
}

blt() {
  if [[ ! -z ${AH_SITE_ENVIRONMENT} ]]; then
    PROJECT_ROOT="/var/www/html/${AH_SITE_GROUP}.${AH_SITE_ENVIRONMENT}"
  elif [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
    PROJECT_ROOT=$(git rev-parse --show-cdup)
  else
    PROJECT_ROOT="."
  fi

  if [ -f "$PROJECT_ROOT/vendor/bin/blt" ]; then
    $PROJECT_ROOT/vendor/bin/blt "$@"

  # Check for local BLT.
  elif [ -f "./vendor/bin/blt" ]; then
    ./vendor/bin/blt "$@"

  else
    echo "You must run this command from within a BLT-generated project."
    return 1
  fi
}

syspip(){
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}