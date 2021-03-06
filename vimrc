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
if has("gui_running")
  set guifont=mononoki\ 14
endif
set linespace=16
syntax on

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

endif

"Theme
set background=light
colorscheme onedark
highlight ColorColumn ctermbg=1
highlight Normal ctermbg=none

vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+p

"Spell checker
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=pt_br<CR>

"Plugins
"  NerdTree
noremap <Leader>f :NERDTreeToggle<CR><CR>
let NERDTreeIgnore = ['\.o$', '\.in$', '^tags$']
