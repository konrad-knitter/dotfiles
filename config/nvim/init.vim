set nocompatible
set autoread
set history=1000

set wrap

set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

syntax on

" Formatting
set autoindent              " Auto-indent new lines
set expandtab               " Use spaces instead of tabs
set shiftwidth=4            " Number of auto-indent spaces
set smartindent             " Enable smart-indent
set smarttab                " Enable smart-tabs
set softtabstop=4           " Number of spaces per Tab

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

if has('mouse')
    set mouse=a
endif

set ruler
set relativenumber

filetype plugin on
set omnifunc=syntaxcomplete#Complete
