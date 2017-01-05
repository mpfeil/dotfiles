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

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
	. $(brew --prefix)/share/bash-completion/bash_completion
fi

##
## GPG agent check
##
if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
  GPG_TTY=$(tty)
  export GPG_TTY
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

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