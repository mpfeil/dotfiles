#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

apps=(
	alfred
	caffeine
	spectacle
	flux
	iterm2
	google-chrome
	visual-studio-code
	gpgtools
)

brew cask install "${apps[@]}"
