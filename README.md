# dotfiles

> ~ is where the ❤️ is

## Installation

Instructions for macOS.

```bash
# Go home...
cd ~

# and "clone" this repository.
git init &&
git remote add origin git@github.com:svendahlstrand/dotfiles.git &&
git fetch &&
git checkout -t origin/master

# Hide this file in Finder.app.
chflags hidden README.md

# Install common stuff using Homebrew.
brew bundle --global
```
