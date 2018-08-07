" vundle setup

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-sensible'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'zerowidth/vim-copy-as-rtf'
Plugin 'tpope/vim-surround'
Plugin 'joshdick/onedark.vim'

call vundle#end()
filetype plugin indent on

" styling
syntax enable
colorscheme onedark 
let g:molokai_original=1
let g:rehash256=1
let g:onedark_termcolors=256
set guifont=Menlo\ Regular:h14

" editor
set hlsearch
set tabstop=4
set shiftwidth=4
set number
set ruler
set clipboard=unnamed
set mouse=a

" cusror styles
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" not to break on words
set formatoptions=1
set linebreak
set nowrap

" fixing up moving line by line in the paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" setup filetypes 
au BufRead,BufNewFile *.{bones,json,geojson,mml} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=markdown
au BufRead,BufNewFile *.{ejs} set filetype=html

" setup NERDTRee

autocmd VimEnter * NERDTree

