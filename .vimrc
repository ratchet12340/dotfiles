" Store more commands in history
set history=500

" Detect filetypes and stuff
filetype plugin indent on

" Auto-reload buffer if file changed on disk
set autoread
au FocusGained,BufEnter * checktime

" Leader key
let mapleader = ","

" Don't let the cursor be at the very bottom
set so=10

" Gives menu for auto-completion 
set wildmenu
set wildmode=list:longest,full

" Ignore files we don't care about (compiled stuff)
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

" Get number in status line
set ruler

" Relative line numbers are superior
set relativenumber

" Hide buffer instead of delete when overwriting buffer with new file
set hidden

" Make backspace work in INSERT mode
set backspace=indent,eol,start

" Move left/right at EOL should wrap to prev/next line
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Start searching as soon as I type
set incsearch

" Performance improvement (macros, and other things)
set lazyredraw

" Better regex
set magic

" Syntax highlighting
syntax enable

" Spaces > tabs
set expandtab

" Smart...tabs...
set smarttab

" 1 tab = 2 space
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Auto,smart indent
set ai
set si

" Wrap lines
set wrap

" Spacebar is search
map <space> /
map <C-space> ?

" Disable highlighting (from searches)
map <silent> <leader><cr> :noh<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Make a new tab
map <leader>tn :tabnew<cr>

" Keep track of undos even after close
set undodir=~/.vim/undodir
set undofile

" Input delays suck
set ttimeout
set ttimeoutlen=100

" Faster file find
map <C-f> :find 

"""""""""""
" PLUGINS "
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
call plug#end()

" Dracula does not color correctly in termite...
" let g:dracula_colorterm = 0
" colorscheme dracula
colorscheme solarized8
set termguicolors

" Ack
map <leader>g :Ack 

" Nerd Tree
map <leader>nn :NERDTreeToggle<cr>
let NERDTreeRespectWildIgnore=1

" Stop Ack from flashing the terminal
set shellpipe=>

" Set path to current dir so :find only looks at current dir
set path=$PWD/**

" No line wrapping!
set nowrap
