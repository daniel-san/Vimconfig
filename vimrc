" {{{ Options
set encoding=utf-8
set nobackup
set noswapfile
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set mouse=a
set hlsearch
set autoindent		" always set autoindenting on
set number
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
" }}}

" {{{ Theme
set background=dark
colorscheme solarized
" }}}

" {{{ Plugins
"   {{{ NerdTree
noremap <Leader>f :NERDTreeToggle<CR><CR>
let NERDTreeIgnore = ['\.o$', '\.in$', '^tags$']
"   }}}
"   {{{ Pathogen
execute pathogen#infect()
"   }}}
" }}}
