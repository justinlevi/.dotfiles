# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ] && [ -n "$BASH_VERSION" ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git Tab Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# AWS Completions
[[ -x "$(which aws_completer)" ]] && complete -C "$(which aws_completer)" aws

# This loads nvm bash_completion (works w/ zsh as well)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


if [ -n "$BASH_VERSION" ]; then
  . ~/.dotfiles/bash/docker.completion.sh
  . ~/.dotfiles/bash/docker-compose.completions.sh
fi