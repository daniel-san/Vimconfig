"Options
set encoding=utf-8
set nobackup
set noswapfile      " do not create swap (.swp) files
set history=500     " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set mouse=a         " enable mouse in terminal
set hlsearch        " highlight search results
set autoindent      " always set autoindenting on
set number          " show lines number
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler
set nocursorline
set colorcolumn=80
set showmatch
set showmode
set nowrap
filetype plugin indent on
syntax on

"Theme
set background=dark
colorscheme solarized

"Plugins
"  NerdTree
noremap <Leader>f :NERDTreeToggle<CR><CR>
let NERDTreeIgnore = ['\.o$', '\.in$', '^tags$']

"Key Remaps
noremap <A-Left> :bp<CR>
noremap <A-Right> :bn<CR>

"  Pathogen
execute pathogen#infect()
