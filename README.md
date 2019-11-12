# .dotfiles

This is a collection of my dotfiles with some added organization. Peruse, you may find something useful.

## Usage

Rename your old .bash_profile to something like ".old_bash_profile".

Clone this repository to your new machine and symlink the correct files, like so:

```bash
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
```

If there is functionality that you think would be useful, let us know in the issue queue. If you have functionality that you need on your own computer, but is not relevant for the majority of users create a .local_bash_profile file in your home directory and add the relevant lines to it from your old bash profile. It will be sourced automatically along with this one.

Then be sure to source your new profile:

```bash
source ~/.bash_profile
```
