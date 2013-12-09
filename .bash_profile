# Load ~/.dot/.extra, ~/.dot/.bash_prompt, ~/.dot/.exports, ~/.dot/.aliases and ~/.dot/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.dot/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/.dot/z/z.sh


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config2" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config2 | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

## add __git_ps1
if [ -f /usr/local/Cellar/git/1.8.4.3/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/Cellar/git/1.8.4.3/etc/bash_completion.d/git-completion.bash
  source /usr/local/Cellar/git/1.8.4.3/etc/bash_completion.d/git-prompt.sh
fi
