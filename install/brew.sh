# Install Homebrew

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install packages

apps=(
	coreutils
	moreutils
	gpg
	gpg-agent 
	pinentry-mac
	keybase
  	git
  	nvm
  	bash
  	bash-completion2
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
