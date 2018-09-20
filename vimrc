
if has('nvim')
  " Make startup faster
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

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

if has('nvim')
  " Dark powered asynchronous completion framework for neovim/Vim8
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
else
  " Next generation completion framework after neocomplcache
  Plug 'Shougo/neocomplete.vim'
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
endif
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
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" An autocompletion daemon for the Go programming language
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': 'go get -u github.com/nsf/gocode && ~/.vim/plugged/gocode/vim/symlink.sh' }

" Asynchronous Go completion for Neovim. deoplete source for Go
if has('nvim')
  Plug 'zchee/deoplete-go', { 'do': 'make'}
  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
  let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
endif

" Do not wrap line 
au BufNewFile,BufRead *.go set nowrap

""""""""""""""""""""""""""
" GPG
""""""""""""""""""""""""""
" This script implements transparent editing of gpg encrypted files.
Plug 'jamessan/vim-gnupg'

call plug#end()

" sheerun/vimrc includes this
colorscheme wombat256mod

