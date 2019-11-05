export ZSH=~/dotfiles/zsh
TERM=xterm-256color
export EDITOR=nvim
export PATH=/Users/$USER/.nimble/bin:/Users/$USER/.local/bin:$PATH

source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz add-zsh-hook
_nicy_prompt() {
	PROMPT=$(~/dotfiles/scripts/prompt/left)
	RPROMPT=$(~/dotfiles/scripts/prompt/right)
}
preexec () {
	~/dotfiles/scripts/prompt/preexec $@
}
add-zsh-hook precmd _nicy_prompt

calc () {
	~/dotfiles/scripts/calc/calc $@
}

gitclone () {
	repo=${1#*/}
	if [ $repo = $1 ]
	then
		git clone https://github.com/$GITHUB_USERNAME/$repo ~/Documents/Projects/$repo
	else
		git clone https://github.com/$1 ~/Documents/Projects/$repo
	fi
	chmod -R 774 ~/Documents/Projects/$repo
	cd ~/Documents/Projects/$repo
}

github () {
	repo=${1#*/}
	if [ $repo = $1 ]
	then
		open https://github.com/$GITHUB_USERNAME/$1
	else
		open https://github.com/$1
	fi
}

search () {
	searchstr="https://duckduckgo.com/?q="
	first=1
	for var in "$@"
	do
		if [[ $first == 1 && ($var == "w" || $var == "imdb" || $var == "a" || $var == "e" || $var == "so" || $var == "gh" || $var == "zillow" || $var == "tw" || $var == "li" || $var == "r" || $var == "ste" || $var == "nf" || $var == "p" || $var == "wa" || $var == "yt" || $var == "g" || $var == "cpp" || $var == "rust" || $var == "py" || $var == "py3") ]]
		then
			var="!$var"
		fi
		first=0
		searchstr="$searchstr$var+"
	done

	searchstr=${searchstr%?}

	open "$searchstr"
}

docs () {
	searchstr="https://duckduckgo.com/?q="
	first=1
	for var in "$@"
	do
		if [[ $first == 1 && ($var == "cpp" || $var == "py" || $var == "python" || $var == "py3" || $var == "python3" || $var == "rust" || $var == "js") ]]
		then
			if [[ $var == "c++" ]]
			then
				var="cpp"
			fi
			var="!$var"
		fi
		first=0
		searchstr="$searchstr$var+"
	done

	searchstr=${searchstr%?}

	open "$searchstr"
}

rand () {
	python3 ~/dotfiles/scripts/rand.py $@
}

alias ga="git add ."
alias gc="git commit"
alias gp="git push -u origin master"

alias vimrc="nvim ~/dotfiles/nvim/init.vim"
alias tmuxrc="nvim ~/dotfiles/tmux/tmux.conf"
alias zshrc="nvim ~/dotfiles/zsh/zshrc.sh"

alias now="date +'%l:%M%p'"

neofetch
