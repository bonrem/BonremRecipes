"#++++++<<<<<<<MADE BY BONREM>>>>>>
"infect with pathogen for plugins
execute pathogen#infect()

""+++>>>>>>appearance and utilities 
set nocompatible
set pastetoggle=<F2> 
set nu
syntax on
set mouse=a
set t_Co=256
set ttyfast
set hidden 
set pastetoggle=<F2> ""for large texts 
set nobackup  "" use modern methods to prevent data loss, will you!
set noswapfile
set history=1000         " remember more commands and search history
set undolevels=1000      " number  of undo levels 
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start 
							" allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
colorscheme  darkZ
"set spell
"""""cursor to previous position
	augroup resCur 
		autocmd!
		autocmd BufReadPost * call setpos(".",getpos("'\""))
	augroup END
  """"""PLUGINS
  	filetype plugin indent on 
"++++++++++++++<<<<Plugin management >>>>>>
    """""nerdtree
let NERDTreeIgnore = ['\.pyc$','\.mp3$','\.mp4$','\.beam$','\.o$','\.pdf$','\.exe$','\.gz','\.tar','\.rar'] 
let NERDTreeQuitOnOpen = 1  "closes  nerd tree after file open 
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI  = 0
let NERDTreeDirArrows  = 0
let NERDTreeShowHiden  = 1
"++++++++++++<<< KEY MAPPING >>>>
let mapleader=","
" Easy window navigation
map <leader><left> <C-w>h 
map <leader><up> <C-w>j
map <leader><down> <C-w>k 
map <leader><right> <C-w>l
"split
nmap <silent><leader>] :split<CR>
nmap <silent><leader>\ :vsplit<CR>
"mapping for plugins below 
"<silent> here prevents verbose 
nnoremap <leader>w 		:w<CR> 
inoremap <leader>w <c-o> :w<CR>
nnoremap <leader>q <c-o> :qa!<CR>
""Tag_list
nnoremap <silent><C-l> :TlistToggle<CR>
let Tlist_Compact_Format = 1 
let Tlist_GainFocus_On_ToggleOpen = 1 
let Tlist_Close_On_Select = 1   
	""end tag_list
nnoremap <silent><F4>  :NERDTreeToggle<CR> 
nnoremap <silent><C-g> :GitGutterToggle<CR> 
nmap <silent> <leader>/ :nohlsearch<CR>
" buffer movement
nmap <silent><leader><Tab> :bnext<CR>
nmap <silent><leader><S-Tab>  :bprevious<CR>
nmap <C-n> :badd
