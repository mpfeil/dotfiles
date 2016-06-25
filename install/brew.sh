# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
	coreutils
	moreutils
  git
  nvm
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
