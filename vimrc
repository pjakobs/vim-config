" pathogen requirements
call pathogen#infect()
call pathogen#helptags()

" Explicitly enable syntax highlighting for osx vim
syntax on

" Different cursor shape while in insert mode (this is
" required when running terminal vim)
let &t_SI = "\<ESC>]50;CursorShape=1\x7"
let &t_EI = "\<ESC>]50;CursorShape=0\x7"

" The color scheme I currently like
set background=dark
colorscheme solarized

" Tabs are four spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Add line numbers
set number

" Add relative line numbers
" set relativenumber

" Setting both ignore case and smartcase makes sure that vim will ignore 
" case only when the search pattern is all lower-case. when a capital is
" present in the search-pattern the search is case sensitive.
set ignorecase
set smartcase

" Incremental search 
set incsearch

" Highlight all text that match the search pattern
set hlsearch

" Highlight the current line
set cursorline

" Enable automatic C program indenting
set cindent

" Enable omnicomplete for css (ctrl-x ctrl-o)
set omnifunc=csscomplete#CompleteCSS

" Incremental search omnicomplete proposal list
set completeopt+=longest

" Always show the status line
set laststatus=2

" Format the status line
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=\ [%{&ff}/%Y]            " filetype
set statusline+=\ [%{getcwd()}]          " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

" Load indent file for specific file types (~/.vim/indent)
filetype indent on

" Enable filetype plugins (NERDCommenter requirement)
filetype plugin on

" Auto save file after losing focus
":au FocusLost * :wa

" Set mapleader as preferred by NERDCommenter
let mapleader=","

" Remap reverse search command ',' to '\', because we use ',' as leader 
noremap \ ,

" ctrl-p settings
let g:ctrlp_root_markers = ['.root']
set wildignore+=.root,*.swp,*.class,.project,.classpath,default.properties,*.dex,build.xml,proguard.cfg

" Treat all numerals as decimal (this ensures that numerals with leading zero's
" are not interpreted as octal)
set nrformats=

" Mappings for moving a line up or down
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" For convenience make ; do the same as :
" nnoremap ; :

" Mapping for insert opening and closing brackets (set cindent to indent 
" at the correct tab stop in C/C++)
imap <C-F> <CR>{<CR>}<C-O>O

map <C-M> :w<CR>:!rlwrap /Applications/Racket\ v5.3.3/bin/racket -t "%" -l racket/base -i<CR><C-D>

" Mappings for adding a closing parenthesis/quotation mark/bracket and 
" positioning the cursor 
"imap ( )<Esc>i
"imap [ ]<Esc>i
"imap " "<Esc>i

" Mapping to avoid ESC (http://vim.wikia.com/wiki/Avoid_the_escape_key)
"inoremap ;; <Esc>
