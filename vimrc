" TABLE OF CONTENTS
" 1. Vundle plugin manager
" 2. SETTINGS
" 3. KEYMAPS
" 4. OTHER

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" SETTINGS

:set ruler
:syntax enable
:set antialias
:set smartcase
:set ts=4
:set shiftwidth=4
:set expandtab
:set smartindent
:set mouse=a
set pythonthreedll=/usr/local/bin/python3

" KEYMAPS

" Quick exit from insert mode
:imap jk <Esc> 
inoremap jk <Esc>
" Shift tab to indent/unindent
:inoremap <S-Tab> <C-O><lt><lt>
:nnoremap <Tab> >>
:nnoremap <S-Tab> <lt><lt>
:vnoremap <Tab> >
:vnoremap <S-Tab> <lt>

" Mmove lines using shift
:nnoremap <S-Up> :m-2<CR>
:nnoremap <S-Down> :m+<CR>
:inoremap <S-Up> <Esc>:m-2<CR>
:inoremap <S-Down> <Esc>:m+<CR>


" OTHER

" Specify python version for ultisnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsListSnippets = '<c-l>'  
