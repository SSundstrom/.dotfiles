#/usr/bin/bash

# Clone spacemacs from github
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Add alternate formulae for emacs and install with brew
brew tap d12frosted/emacs-plus
brew install emacs-plus

# Install Source Code Pro
brew tap homebrew/cask-fonts 
brew cask install font-source-code-pro
