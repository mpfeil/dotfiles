# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.dotfiles/.{bash_prompt,aliases,functions,exports,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

##
## Completion… CHECK
##

# if [[ -n "$ZSH_VERSION" ]]; then  # quit now if in zsh
# 	return 1 2> /dev/null || exit 1;
# fi;

# # bash completion.
# if  which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
# 	source "$(brew --prefix)/share/bash-completion/bash_completion";
# elif [ -f /etc/bash_completion ]; then
# 	source /etc/bash_completion;
# fi;

# # homebrew completion
# if  which brew > /dev/null; then
# 	source `brew --repository`/Library/Contributions/brew_bash_completion.sh
# fi;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults


##
## better `cd`'ing
##

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl