" vundle setup

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-sensible'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'zerowidth/vim-copy-as-rtf'
Plugin 'tpope/vim-surround'
Plugin 'joshdick/onedark.vim'
Plugin 'rhysd/vim-fixjson'

call vundle#end()
filetype plugin indent on

" styling
syntax enable
set termguicolors
set background=dark
colorscheme onedark
highlight Normal guibg=#21252b ctermbg=NONE
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
au BufRead,BufNewFile *.{tsl} set filetype=json

" Auto-reload files modified externally (e.g. by Claude Code)
" autoread silently reloads a buffer when the file changes on disk,
" but only if the buffer has no unsaved changes.
" checktime triggers the staleness check on focus/entry and while idle.
" updatetime controls how quickly the idle check fires (ms).
" FileChangedShellPost fires after a reload and prints a warning in the
" command line so you know the buffer was updated from disk.
set autoread
set updatetime=1000
autocmd FocusGained,BufEnter * checktime
autocmd CursorHold,CursorHoldI * checktime
autocmd FileChangedShellPost * echohl WarningMsg | echo "Buffer reloaded from disk: " . expand('<afile>') | echohl None

" setup NERDTRee

autocmd VimEnter * NERDTree

let NERDTreeShowHidden=1
