# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

brew tap homebrew/versions

# Install packages

apps=(
	coreutils
	moreutils
	gpg
	keybase
  git
  nvm
  bash
  bash-completion2
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
