nvm install 6
nvm use 6
nvm alias default 6

# Globally install with npm
packages=(
	diff-so-fancy
	statik
	git-open
)

npm install -g "${packages[@]}"
