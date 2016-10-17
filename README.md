# dotfiles

### Warning
> This is meant to be a starter template for your own dotfiles repo. It is
> recommended that you maintain one of your own.

## Requirements
You should have zsh as your shell

## Installation
Clone the repo
```
git clone git@github.com/bangthetable/dotfiles.git ~/.dotfiles
```

Install [rcm](https://github.com/thoughtbot/rcm)
```
brew tap thoughtbot/formulae
brew install rcm
```

Install the dotfiles:
```
env RCRC=$HOME/.dotfiles/rcrc rcup
```

This will create appropriate symlinks for the dotfiles in your home directory.
After the initial installation you can run `rcup` multiple times to update
