" I'm not using vi
set nocompatible

" set <Leader>
let mapleader = ' '

" Minimalist Vim Plugin Manager
call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""
" Defaults
""""""""""""""""""""""""""
" Little less sensible yet great vim defaults
Plug 'sheerun/vimrc'

""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""
" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \}
let g:lightline.separator = {
      \ 'left': '',
      \ 'right': '',
      \}
let g:lightline.subseparator = {
      \ 'left': '',
      \'right': '',
      \}

" The fancy start screen for Vim
Plug 'mhinz/vim-startify'

""""""""""""""""""""""""""
" Edit
""""""""""""""""""""""""""
" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Next generation completion framework after neocomplcache
Plug 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
set shortmess+=c
set completeopt=noinsert,menuone,noselect

""""""""""""""""""""""""""
" Language general 
""""""""""""""""""""""""""
" A solid language pack for Vim
Plug 'sheerun/vim-polyglot'

""""""""""""""""""""""""""
" Golang
""""""""""""""""""""""""""
" Go development plugin for Vim
Plug 'fatih/vim-go', { 'tag': 'v1.21', 'do': ':GoInstallBinaries' }

""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""
"Plug 'klen/python-mode'

""""""""""""""""""""""""""
" GPG
""""""""""""""""""""""""""
" This script implements transparent editing of gpg encrypted files.
Plug 'jamessan/vim-gnupg'

call plug#end()

" sheerun/vimrc includes this
" colorscheme wombat256mod

" Do not wrap line 
au BufNewFile,BufRead *.go set nowrap
au BufNewFile,BufRead *.py set nowrap
