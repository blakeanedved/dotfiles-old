set nocompatible
" {{{ plugins 
	call plug#begin('~/dotfiles/vim/plugins')
	
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }

	Plug 'jackguo380/vim-lsp-cxx-highlight', { 'for': ['cpp', 'c', 'h', 'hpp', 'tpp'] }

	Plug 'camspiers/animate.vim'
	Plug 'camspiers/lens.vim'
	Plug 'andymass/vim-matchup'
	Plug 'rakr/vim-one'
	Plug 'scrooloose/nerdcommenter'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'AndrewRadev/sideways.vim'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'AndrewRadev/tagalong.vim', { 'for': ['html', 'xml', 'jsx', 'php', 'javascriptreact', 'typescriptreact'] }
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'tacahiroy/ctrlp-funky', { 'on': 'CtrlPFunky' }
	Plug 'junegunn/rainbow_parentheses.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-fugitive', { 'on': 'Git' }
	Plug 'itchyny/lightline.vim'
	Plug 'airblade/vim-gitgutter', { 'on': 'GitGutterToggle' }
	Plug 'markonm/traces.vim'
	Plug 'mattn/emmet-vim', { 'for': ['html', 'xml', 'jsx', 'php', 'javascriptreact', 'typescriptreact'] }
	Plug 'sheerun/vim-polyglot'

	Plug 'wsdjeg/vim-lua', { 'for': ['lua'] }

	"Plug 'dylon/vim-antlr'

	call plug#end()
" }}}
" {{{ builtins 
	set number
	let mapleader = "\<Space>"
	let maplocalleader = "\<Space>"
	syntax on
	filetype plugin indent on
	set backspace=indent,eol,start
	set tabstop=2
	set softtabstop=2
	set shiftwidth=2
	set pastetoggle=<F2>
	set wildmenu
	set showmatch
	set incsearch
	set hlsearch
	set foldenable
	"This will Fold everything
	set foldlevelstart=0
	"set foldlevelstart=20
	set foldmethod=marker
	set splitbelow
	set splitright
	set hidden
	set updatetime=100
	set shortmess+=c
	set mouse=a
	set encoding=UTF-8
	set fileencoding=UTF-8
	set nobackup
	set nowritebackup
	set belloff=all
	set laststatus=2
	set ttimeoutlen=0

	if (has("termguicolors"))
		set termguicolors
	endif

	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif

	" {{{ Tmux 
		if (!empty($TMUX))
			if (!has("nvim"))
				set term=xterm-256color
			endif
		endif
	" }}}
" }}}
" {{{ remaps 
	nnoremap <leader>f za

	nmap <S-Up> <Nop>
	nmap <S-Down> <Nop>
	nmap <S-Left> <Nop>
	nmap <S-Right> <Nop>
	vmap <S-Up> <Nop>
	vmap <S-Down> <Nop>
	vmap <S-Left> <Nop>
	vmap <S-Right> <Nop>
	imap <S-Up> <Nop>
	imap <S-Down> <Nop>
	imap <S-Left> <Nop>
	imap <S-Right> <Nop>

	" {{{ vim-gitgutter 
		nnoremap <leader>ggt :GitGutterToggle<cr>
	" }}}
	" {{{ ctrlp-funky 
		nnoremap <leader>t :CtrlPFunky<cr>
	" }}}
	" {{{ coc.nvim 
		" Use tab for trigger completion with characters ahead and navigate.
		" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
		" other plugin before putting this into your config.
		inoremap <silent><expr> <TAB>
			  \ pumvisible() ? "\<C-n>" :
			  \ <SID>check_back_space() ? "\<TAB>" :
			  \ coc#refresh()
		inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

		" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
		" position. Coc only does snippet and additional edit on confirm.
		" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
		if exists('*complete_info')
		  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
		else
		  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
		endif

		" Use `[g` and `]g` to navigate diagnostics
		" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
		nmap <silent> [g <Plug>(coc-diagnostic-prev)
		nmap <silent> ]g <Plug>(coc-diagnostic-next)

		" GoTo code navigation.
		nmap <silent> gd <Plug>(coc-definition)
		nmap <silent> gy <Plug>(coc-type-definition)
		nmap <silent> gi <Plug>(coc-implementation)
		nmap <silent> gr <Plug>(coc-references)

		" Use K to show documentation in preview window.
		nnoremap <silent> K :call <SID>show_documentation()<CR>

		" Symbol renaming.
		nmap <leader>rn <Plug>(coc-rename)

		" Formatting selected code.
		xmap fs <Plug>(coc-format-selected)
		nmap fs <Plug>(coc-format-selected)

		" Applying codeAction to the selected region.
		" Example: `<leader>aap` for current paragraph
		xmap <leader>a  <Plug>(coc-codeaction-selected)
		nmap <leader>a  <Plug>(coc-codeaction-selected)

		" Remap keys for applying codeAction to the current buffer.
		nmap <leader>ac  <Plug>(coc-codeaction)
		" Apply AutoFix to problem on the current line.
		nmap <leader>qf  <Plug>(coc-fix-current)

		" Map function and class text objects
		" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
		xmap if <Plug>(coc-funcobj-i)
		omap if <Plug>(coc-funcobj-i)
		xmap af <Plug>(coc-funcobj-a)
		omap af <Plug>(coc-funcobj-a)
		xmap ic <Plug>(coc-classobj-i)
		omap ic <Plug>(coc-classobj-i)
		xmap ac <Plug>(coc-classobj-a)
		omap ac <Plug>(coc-classobj-a)

		" Use CTRL-S for selections ranges.
		" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
		nmap <silent> <C-s> <Plug>(coc-range-select)
		xmap <silent> <C-s> <Plug>(coc-range-select)

		" Mappings for CoCList
		" Show all diagnostics.
		nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
		" Manage extensions.
		nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
		" Show commands.
		nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
		" Find symbol of current document.
		nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
		" Search workspace symbols.
		nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
		" Do default action for next item.
		nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
		" Do default action for previous item.
		nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
		" Resume latest coc list.
		nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
	" }}}
" }}}
" {{{ coc.nvim
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  else
		call CocAction('doHover')
	  endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder.
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Use <c-space> to trigger completion.
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif

	" Add `:Format` command to format current buffer.
	command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	command! -nargs=? Fold :call CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')
" }}}
" {{{ ctrlp-funky 
	let g:ctrlp_funky_syntax_highlight = 1
" }}}
" {{{ vim-gitgutter 
	let g:gitgutter_enabled = 0
" }}}
" {{{ one 
	set background=dark
	colorscheme one

	call one#highlight('MatchParen', '282c34', 'fef937', 'none')
	call one#highlight('MatchWord', 'dfdfe0', '1266ca', 'none')
	call one#highlight('Pmenu', 'dfdfe0', '393b44', 'none')
	call one#highlight('PmenuSbar', '393b44', '393b44', 'none')
	call one#highlight('PmenuSel', 'dfdfe0', '1266ca', 'none')
	call one#highlight('PmenuThumb', '414453', '414453', 'none')
	call one#highlight('QuickFixLine', 'dfdfe0', '1266ca', 'none')
	call one#highlight('WildMenu', 'dfdfe0', '1266ca', 'none')
	call one#highlight('IncSearch', '282c34', 'fef937', 'none')
	call one#highlight('Folded', '4b5263', '282c34', 'none')
" }}}
" {{{ lightline.vim 
	let g:lightline = {
      \ 'colorscheme': 'one',
	  \ 'active': {
	  \		'right': [
	  \			[ 'lineinfo' ],
	  \			[ 'cocstatus' ],
	  \			[ 'filetype' ]
	  \		]
	  \ },
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'component_function': {
	  \		'cocstatus': 'coc#status',
	  \ }
    \ }

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" }}}
" {{{ rainbow_parentheses 
	let g:rainbow#max_level = 16
" }}}
" {{{ autocmd 
	augroup rainbow_parentheses
		autocmd!
		autocmd FileType * RainbowParentheses
	augroup END

	au BufRead,BufNewFile *.g4 set filetype=antlr4
	au BufRead,BufNewFile *.tpp set filetype=cpp
" }}}
