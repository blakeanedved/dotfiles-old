set nocompatible
" Install vim-plug with
" 	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" or with this for vim8
" 	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" {{{ Plugins
	call plug#begin('~/dotfiles/nvim/plugins')

	"Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"Plug 'HerringtonDarkholme/yats.vim'
	"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
	"Plug 'SirVer/ultisnips'
	"Plug 'honza/vim-snippets'
	"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
	"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
	"Plug 'donRaphaco/neotex', { 'for': 'tex' }
	Plug 'edkolev/tmuxline.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'tyrannicaltoucan/vim-quantum'
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/nerdcommenter'
	Plug 'tpope/vim-surround'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'AndrewRadev/sideways.vim'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf'
	"Plug 'xolox/vim-misc'
	"Plug 'xolox/vim-notes'
	"Plug 'alaviss/nim.nvim'
	"Plug 'prabirshrestha/asyncomplete.vim'
	"Plug 'mrk21/yaml-vim'
	Plug 'voldikss/vim-floaterm'
	"Plug 'thaerkh/vim-indentguides'
	"Plug 'floobits/floobits-neovim'
	"Plug 'norcalli/nvim-colorizer.lua'
	"Plug 'glacambre/firenvim', { 'do': function('firenvim#install(0)') }
	Plug 'mattn/emmet-vim'
	"Plug 'vim-scripts/utl.vim'
	Plug 'tpope/vim-repeat'

	call plug#end()
" }}}
" {{{ builtins
	set number
	let mapleader = "\<Space>"
	let maplocalleader = "\<Space>"
	syntax on
	filetype plugin indent on
	set backspace=indent,eol,start
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set pastetoggle=<F2>
	set wildmenu
	set showmatch
	set incsearch
	set hlsearch
	set foldenable
	"This will Fold everything
	"set foldlevelstart=0
	set foldlevelstart=20
	set foldmethod=marker
	set splitbelow
	set splitright
	set hidden
	set updatetime=300
	set shortmess+=c
	set signcolumn=yes
" }}}
" {{{ remaps
	nnoremap <leader>f za

	nnoremap <C-t> :NERDTreeToggle<cr>
	inoremap <C-t> :NERDTreeToggle<cr>

	nmap <C-S-Right> :tabn<cr>
	nmap <C-S-Left> :tabp<cr>
	nmap <leader>sl :SidewaysLeft<cr>
	nmap <leader>sr :SidewaysRight<cr>
	vmap <C-S-Right> :tabn<cr>
	vmap <C-S-Left> :tabp<cr>
	vmap <leader>sl :SidewaysLeft<cr>
	vmap <leader>sr :SidewaysRight<cr>

	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	vnoremap <C-J> <C-W><C-J>
	vnoremap <C-K> <C-W><C-K>
	vnoremap <C-L> <C-W><C-L>
	vnoremap <C-H> <C-W><C-H>

	nmap <leader>bn :vnew<cr>
	nmap <leader>bN :enew<cr>
	nmap <leader>bh :new<cr>
	nmap <leader>bq :q<cr>
	nmap <leader>bk :q<cr>
	nmap <leader>bd :q<cr>
	nmap <leader>bQ :q!<cr>
	nmap <leader>bK :q!<cr>
	nmap <leader>bD :q!<cr>
	nmap <leader>bz :close<cr>
	nmap <leader>bb :buffers<cr>:buffer<Space>
	vmap <leader>bn :vnew<cr>
	vmap <leader>bN :enew<cr>
	vmap <leader>bh :new<cr>
	vmap <leader>bq :q<cr>
	vmap <leader>bk :q<cr>
	vmap <leader>bd :q<cr>
	vmap <leader>bQ :q!<cr>
	vmap <leader>bK :q!<cr>
	vmap <leader>bD :q!<cr>
	vmap <leader>bz :close<cr>
	vmap <leader>bb :buffers<cr>:buffer<Space>

	nmap <leader>wn :tabnew<cr>
	nmap <leader>wd :tabclose<cr>

	noremap <silent> <F12> :FloatermToggle<CR>i
	noremap! <silent> <F12> <Esc>:FloatermToggle<CR>i
	tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>

	nnoremap <silent> <leader><leader> :call fzf#vim#files('.', {'options': '--prompt ""'})<CR>
" }}}
" {{{ floating fzf 
	let g:height = float2nr(&lines * 0.9)
	let g:width = float2nr(&columns * 0.95)
	let g:preview_width = float2nr(&columns * 0.7)
	let g:fzf_buffers_jump = 1
	let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
	let $FZF_DEFAULT_OPTS=" --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4 --preview 'if file -i {}|grep -q binary; then file -b {}; else bat --style=changes --color always --line-range :40 {}; fi' --preview-window right:" . g:preview_width
	let g:fzf_layout = { 'window': 'call FloatingFZF(' . g:width . ',' . g:height . ')' }

	function! FloatingFZF(width, height)
	  let buf = nvim_create_buf(v:false, v:true)
	  call setbufvar(buf, '&signcolumn', 'no')

	  let height = float2nr(a:height)
	  let width = float2nr(a:width)
	  let horizontal = float2nr((&columns - width) / 2)
	  let vertical = 1

	  let opts = {
			\ 'relative': 'editor',
			\ 'row': vertical,
			\ 'col': horizontal,
			\ 'width': width,
			\ 'height': height,
			\ 'style': 'minimal'
			\ }

	  call nvim_open_win(buf, v:true, opts)
	endfunction
" }}}
" {{{ functions & commands
	let s:previousMode=''
	let s:tmuxenv = $TMUX
	let s:tmux = 0
	if (s:tmuxenv != "")
		let s:tmux = 1
	endif
	function! ChangeTmuxline()
		if s:tmux == 1
			let currentMode=mode()
			if s:previousMode != currentMode
				if currentMode == "i" || currentMode == "ic" || currentMode == "ix" || currentMode == "R" || currentMode == "Rx" || currentMode == "Rc" || currentMode == "Rv"
					:Tmuxline airline_insert
				elseif currentMode == "n" || currentMode == "niR" || currentMode == "niI" || currentMode == "niV" || currentMode == "no" || currentMode == "nov" || currentMode == "noV" || currentMode == "noCTRL-V" || currentMode == "c" || currentMode == "ce" || currentMode == "cv" || currentMode == "r" || currentMode == "rm" || currentMode == "r?" || currentMode == "!" || currentMode == "t"
					:Tmuxline airline
				elseif currentMode == "v" || currentMode == "V" || currentMode == "CTRL-V" || currentMode == "s" || currentMode == "S" || currentMode == "CTRL-S"
					:Tmuxline airline_visual
				endif
				let s:previousMode=currentMode
			endif	
		endif
		return ""
	endfunction
" }}}
" {{{ quantum
	let g:quantum_black = 1
	let g:quantum_italics = 1
	set background=dark
	set termguicolors
	colorscheme quantum
" }}}
" {{{ airline
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif
	let g:airline_powerline_fonts = 1
	let g:airline_theme = 'quantum'
	let g:airline_section_z = '%{ChangeTmuxline()} %p%% %l:%c '

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
" }}}
" {{{ tmuxline
	let g:tmuxline_powerline_separators = 1
	let g:tmuxline_theme = 'airline'
	let g:tmuxline_preset = {
		\'a': '#S',
		\'b': '#h',
		\'c': '',
		\'win': '#I #W',
		\'cwin': '#I #W',
		\'x': '#(sh ~/dotfiles/scripts/cpu_percentage.sh) | #(~/dotfiles/scripts/osx-cpu-temp)',
		\'y': '#(sh ~/dotfiles/scripts/batt.sh)',
		\'z': '#(date +"%l:%M%p")'}
" }}}
" {{{ floaterm 
	let g:floaterm_position = 'center'
" }}}
" {{{ emmet-vim 
	let g:user_emmet_leader_key=','
" }}}
" {{{ autocmd
	autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" }}}
" {{{ highlights
	hi Visual ctermfg=255 guifg=#FFFFFF ctermbg=129 guibg=#AF00FF
" }}}
