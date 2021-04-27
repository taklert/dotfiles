# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# aliases
alias VID='cd ~/Videos'
alias DOC='cd ~/Documents'
alias MUS='cd ~/Music'
alias TMP='cd ~/Templates'
alias PIC='cd ~/Pictures'
alias DL='cd ~/Downloads'
alias UP='sudo dnf update'
alias IN='sudo dnf install'
alias SE='sudo dnf search'
alias YTDLM='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'
alias YTDL='youtube-dl'

if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
