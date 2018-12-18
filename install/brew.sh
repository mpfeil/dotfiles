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
	findutils
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

# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Remove outdated versions from the cellar
brew cleanup
