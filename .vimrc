" Pathogen
"{
    " Ignore list
    let g:pathogen_disabled = []
    if v:version < '703'
        call add(g:pathogen_disabled, 'numbers')
    endif

    call pathogen#infect()
	call pathogen#helptags()
"}

" set up color scheme
"{
	syntax enable
	set background=light
	set t_Co=256
	let g:solarized_termcolors=256
	colorscheme solarized
"}

" Spell check
"{
	set spell
	setlocal spellfile+=~/.vim/spell/en.utf-8.add
"}

" Only do this part when compiled with support for autocommands (work in progress)
"{
	if has("autocmd")
		" Enable file type detection
		filetype on
		 
		" Customisations based on house-style (arbitrary)
		autocmd FileType php setlocal ts=4 sts=4 sw=4 noexpandtab
		autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
		autocmd FileType css setlocal ts=4 sts=4 sw=4 noexpandtab
		autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
		 
		" Treat .rss files as XML
		autocmd BufNewFile,BufRead *.rss setfiletype xml
		
		"Only add closetag on appropriate file types"
		autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
		autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

	endif
"}

" Search
"{
	" clear search with space bar
	nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
	" jumps to search word as you type
	set incsearch
	" find as you type search
	set incsearch
	" highlight search terms
	set hlsearch
	" case insensitive search
	set ignorecase
	" set working dir to current file
	set smartcase
"}

"Misc
"{
	" Set directory to current file
	set autochdir
	
	" normal mode with jk
	imap jk <Esc>
	
	" calculator in insert mode
	imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR> 
	
	" Save files after accidently forgetting to sudo
	cmap w!! w !sudo tee % >/dev/null

    " Don't create .swp file
    set noswapfile

    " use visual bell instead of beep
    set visualbell
"}

" Window and file management 
"{
	" Use tree-mode as default view
	let g:netrw_liststyle=3 
	
    " Set tree-mode file ignores
    let g:netrw_list_hide= '.git,.sass-cache,.svn,nbproject'

	" preview window shown in a vertically split
	let g:netrw_preview=1 
	
	" navigate splits
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	
	" open file in split to right
	map oo o<C-w>L
	
	" expand current vert split to full width
	map ff <C-w><Bar>

	" sets the min widnow height to 0 - only show the file name
	set wmh=0
"}

" Comment Block formating
"{
	" auto format comment blocks
	set comments=sl:/**,mb:\ *,elx:\ */
	set formatoptions+=r
"}

" Yank rink config
"{
	let g:yankring_min_element_length = 2
	let g:yankring_history_dir = '~/.vim/yanks'
"}
" Below from - https://github.com/spf13/spf13-vim/blob/master/.vimrc (partial)

" Vim UI 
"{
	" only show 15 tabs
	set tabpagemax=15
	" display the current mode
	set showmode

	" highlight current line
	set cursorline
    " highlight bg color of current line
	hi cursorline guibg=#333333
    " highlight cursor
    hi CursorColumn guibg=#333333

	if has('cmdline_info')
		" show the ruler
		set ruler
		" a ruler on steroids
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
		" show partial commands in status line and
		set showcmd
	endif

	" backspace for dummys
	set backspace=indent,eol,start	
	" No extra spaces between rows
	set linespace=0					
	" Line numbers on
	set nu
	" show matching brackets/parenthesis
	set showmatch
	" windows can be 0 line high
	set winminheight=0 
	" backspace and cursor keys wrap to
	set whichwrap=b,s,h,l,<,>,[,]
	" lines to scroll when cursor leaves screen
	set scrolljump=5
	" minimum lines to keep above and below cursor
	set scrolloff=3
" }

" Formatting 
"{
	" wrap long lines
	set nowrap
	" indent at the same level of the previous line
	set autoindent
	set smartindent
	" use indents of 4 spaces
	set shiftwidth=4
	" turn off tab to spaces
	set et!
	" an indentation every four columns
	set tabstop=4
	" let backspace delete indent
	set softtabstop=4
" }

" Add add extra files if they exist
"{
    let WLION = expand("~/vim_files/.work")
	if filereadable(WLION)
		source ~/vim_files/.work
	endif

    let APPEND = expand("~/vim_files/.vimrc_append")
	if filereadable(APPEND)
		source ~/vim_files/.vimrc_append
	endif
"}
