# Add bin to PATH
export PATH="/usr/local/bin:$PATH"

# Load NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Turn command line colors on
export CLICOLOR=1

# Set ls command colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set VSCode as editor
export EDITOR='code -w'

# Stop Git from asking for merge messages
export GIT_MERGE_AUTOEDIT=no

# Increase history size
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

if [ -n "$BASH_VERSION" ]; then
  shopt -s histappend                   # append to history, don't overwrite it
fi

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Add curl to the front of PATH
export PATH="/usr/local/opt/curl/bin:$PATH"

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Drush Launcher fallback path
export DRUSH_LAUNCHER_FALLBACK=$HOME/.composer/vendor/bin/drush

# Add the global composer vendor folder to PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Add the local composer vendor folder to PATH
export PATH="$PATH:./vendor/bin"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

if [ -n "$BASH_VERSION" ]; then
  eval "$(direnv hook bash)"
fi