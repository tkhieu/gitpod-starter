#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Setup zsh
brew install zsh zsh-autosuggestions zsh-syntax-highlighting

# Remove outdated versions from the cellar.
brew cleanup