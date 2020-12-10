# .dotfiles

This is a collection of my dotfiles with some added organization. Peruse, you may find something useful.

## Usage

Clone this repository to your new machine and symlink the correct files, like so:

```bash
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

Install some necessary software via:
```bash
. ~/.dotfiles/install.sh
```


Then be sure to source your new profile:


BASH
```bash
. ~/.dotfiles/osx/defaults.sh
source ~/.bash_profile
```

ZSH
```bash
. ~/.dotfiles/osx/defaults.sh
source ~/.zshrc
```
