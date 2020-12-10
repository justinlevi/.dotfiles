# inspiration
# https://github.com/geerlingguy/mac-dev-playbook
# https://sourabhbajaj.com/mac-setup/Apps/


# git clone git@github.com:justinlevi/.dotfiles.git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install tree
brew install fzf
brew install ack
brew install git
brew install bash-completion
brew install zsh
brew install balenaetcher
brew install sequel-pro
brew install adobe-creative-cloud
brew install grep

brew install nvm
brew install yarn

brew tap homebrew/cask-fonts && brew cask install font-source-code-pro

brew install --cask visual-studio-code
brew install --cask 1password
brew install --cask dropbox
brew install --cask evernote
brew install --cask thinkorswim
brew install --cask appzapper
brew install --cask tower

brew install cowsay
brew install thefuck

nvm install node 10

chmod g-w /usr/local/share/zsh
chmod g-w /usr/local/share/zsh/site-functions


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


git config --global user.name "Justin Winter"
git config --global user.email "justinlevi@gmail.com"


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Docker Desktop
# https://docs.docker.com/docker-for-mac/install/

# ssh-keygen -t ed25519 -C "justinlevi@gmail.com"
# eval "$(ssh-agent -s)"
# open ~/.ssh/config
# touch ~/.ssh/config
# code ~/.ssh/config
# ssh-add -K ~/.ssh/id_ed25519
# pbcopy < ~/.ssh/id_ed25519.pub