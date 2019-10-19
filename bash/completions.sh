# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git Tab Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# AWS Completions
[[ -x "$(which aws_completer)" ]] && complete -C "$(which aws_completer)" aws

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

. ~/.dotfiles/bash/docker.completion.sh
. ~/.dotfiles/bash/docker-compose.completions.sh