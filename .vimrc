language messages C

set visualbell

"set encoding=utf-8

" G U I

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h10:cRUSSIAN
  endif

  set mousehide
  set guioptions-=T " remove toolbar
  set guioptions-=m " remove menu
  set guioptions-=r " remove scroll
  set guioptions-=e " remove gui tabs
endif

set showtabline=2

filetype plugin indent on

syntax on
set showmatch

" S E A R C H

set hlsearch smartcase ignorecase incsearch

set backspace=indent,eol,start

" T A B S

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent smarttab

