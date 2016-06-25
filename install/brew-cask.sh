#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

apps=(
	spectacle
	dropbox
	flux
	iterm2
	sublime-text
	google-chrome-canary
	firefoxnightly
	webkit-nightly
	chromium
	torbrowser
)

brew cask install "${apps[@]}"
