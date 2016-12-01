filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1

