# {{{ Environment Variables 
	export ZSH_PLUGIN_PATH=~/dotfiles/zsh/plugins
	export EDITOR=vim

	export BAT_THEME="TwoDark"
	export FZF_DEFAULT_OPTS="-i --prompt='> ' --color=dark --color=fg:-1,bg:-1,hl:#1266ca,fg+:#ffffff,bg+:-1,hl+:#1266ca,info:-1,prompt:#fef937 --preview 'bat --style=changes --color always --line-range :40 {}' --preview-window right:60%"

	export PATH=$PATH:~/dotfiles/bin
# }}}
# {{{ Plugins 
	source $ZSH_PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source $ZSH_PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
	source $ZSH_PLUGIN_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh

	autoload -U promptinit; promptinit
	prompt pure
# }}}
# {{{ Functions 
	github () {
		open https://github.com/$1
	}

	search () {
		searchstr="https://duckduckgo.com/?q="
		for var in "$@"
		do
			searchstr="$searchstr$var+"
		done

		searchstr=${searchstr%?}

		open "$searchstr"
	}

	swap () {
		mv $1 $1$2
		mv $2 $1
		mv $1$2 $2
	}

	serve () {
		browser-sync start --server --files '**/*.html' '**/*.css' '**/*.js'
	}

	now () {
		date +'%l:%M%p'
	}
# }}}
# {{{ Aliases 
	alias vimrc="$EDITOR ~/dotfiles/vim/init.vim"
	alias zshrc="$EDITOR ~/dotfiles/zsh/zshrc.sh"
	alias tmuxrc="$EDITOR ~/dotfiles/tmux/tmux.conf"
# }}}
# {{{ Hashes 
	hash -d vim=$HOME/dotfiles/vim
	hash -d zsh=$HOME/dotfiles/zsh
	hash -d tmux=$HOME/dotfiles/tmux
# }}}
