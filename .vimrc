syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" clear search with spacebar
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
" normal mode with kj
:imap kj <Esc>
" navigate splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" PHP comment out line
let @c='0i//^['

" calculator in insert mode
imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR> 

" Save files after accidently forgetting to sudo
cmap w!! w !sudo tee % >/dev/null

" sets the min widnow height to 0 - only show the file name
set wmh=0

" clear search with space bar
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" set working dir to current file
set autochdir

" jumps to search word as you type
set incsearch

" Indents code
set smartindent

" Below from - https://github.com/spf13/spf13-vim/blob/master/.vimrc 

" Vim UI {
	set tabpagemax=15 				" only show 15 tabs
	set showmode                   	" display the current mode

	set cursorline  				" highlight current line
	hi cursorline guibg=#333333 	" highlight bg color of current line
	hi CursorColumn guibg=#333333   " highlight cursor

	if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
	endif

	set backspace=indent,eol,start	" backspace for dummys
	set linespace=0					" No extra spaces between rows
	set nu							" Line numbers on
	set showmatch					" show matching brackets/parenthesis
	set incsearch					" find as you type search
	set hlsearch					" highlight search terms
	set winminheight=0				" windows can be 0 line high 
	set ignorecase					" case insensitive search
	set smartcase					" case sensitive when uc present
	set wildmenu					" show list instead of just completing
	set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
	set scrolljump=5 				" lines to scroll when cursor leaves screen
	set scrolloff=3 				" minimum lines to keep above and below cursor
	set foldenable  				" auto fold code
	set list
	set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
	set invlist

" }

" Formatting {
	set nowrap                     	" wrap long lines
	set autoindent                 	" indent at the same level of the previous line
	set shiftwidth=4               	" use indents of 4 spaces
	set expandtab 	  	     		" tabs are spaces, not tabs
   	set et!                         " turn of tab to spaces
	set tabstop=4 					" an indentation every four columns
	set softtabstop=4 				" let backspace delete indent
	set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
	set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
" }
