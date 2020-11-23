## Environment Variables
Variable|Value
---|---
`EDITOR` | `vim`
`BAT_THEME` | `TwoDark`
`FZF_DEFAULT_OPTS` | `-i --prompt='> ' --color=dark --color=fg:-1,bg:-1,hl:#1266ca,fg+:#ffffff,bg+:-1,hl+:#1266ca,info:-1,prompt:#fef937 --preview 'bat --style=changes --color always --line-range :40 {}' --preview-window right:60%`
`PATH` | `$PATH:~/dotfiles/bin`
`ZSH_PLUGIN_PATH` | `~/dotfiles/zsh/plugins`

## Plugins

### [bat](https://github.com/sharkdp/bat)
**THIS IS NOT INSTALLED BY DEFAULT, YOU WILL HAVE TO INSTALL IT WITH YOUR OWN PACKAGE MANAGER**
Run `tldr bat` to see the man page or `bat --help` to see usage.

### [fzf](https://github.com/junegunn/fzf)
Run `tldr fzf` to see the man page or `fzf --help` to see usage.

### [tldr-sh-client](https://github.com/raylee/tldr-sh-client)
Run `tldr --help` to see usage.

### [fx](https://github.com/antonmedv/fx)
Run `fx --help` to see usage.

### [ripgrep](https://github.com/BurntSushi/ripgrep)
**THIS IS NOT INSTALLED BY DEFAULT, YOU WILL HAVE TO INSTALL IT WITH YOUR OWN PACKAGE MANAGER**
Run `tldr rg` to see the man page or `rg --help` to see usage.

### [pure](https://github.com/sindresorhus/pure)
No configuration or interaction needed, this package is used as the prompt, and I like it with zero configuration.

### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
No configuration or interaction needed.

### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
No configuration or interaction needed.

### [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
No configuration or interaction needed.

## Custom Commands
Command|Action
---|---
`github username/repo` | opens `https://github.com/username/repo` in a browser
`search SEARCH TERMS` | searches `SEARCH TERMS` on duckduckgo
`swap FILE1 FILE2` | swaps `FILE1` and `FILE2`
`serve` | serves the current directory in a live reloading webserver using [browser-sync](https://www.browsersync.io/)
`now` | prints the current time in `HH:MM[AM|PM]` format
`vimrc` | open `~/dotfiles/vim/init.vim` with `$EDITOR`
`zshrc` | open `~/dotfiles/zsh/zshrc.sh` with `$EDITOR`
`tmuxrc` | open `~/dotfiles/tmux/tmux.conf` with `$EDITOR`

## Directory Hashes
Hash|Destination
---|---
`vim` | `~/dotfiles/vim`
`zsh` | `~/dotfiles/zsh`
`tmux` | `~/dotfiles/tmux`
