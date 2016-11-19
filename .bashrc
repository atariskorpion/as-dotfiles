echo "*** .bashrc"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source definitions in .profile if exists
if [ -f ~/.profile ]; then
	. ~/.profile
fi

# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
#for file in ~/.{extra,bash_prompt,exports,aliases,functions.dircolors}; do
for file in ~/.{extra,exports,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file
