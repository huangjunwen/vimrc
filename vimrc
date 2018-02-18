
" I'm not using vi
set nocompatible

" set <Leader>
let mapleader = ","

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

" The fancy start screen for Vim
Plug 'mhinz/vim-startify'

" Unite and create user interfaces
Plug 'Shougo/unite.vim'

" Powerful file explorer implemented by Vim script
Plug 'Shougo/vimfiler.vim'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '-'
let g:vimfiler_tree_closed_icon = '+'
let g:vimfiler_file_icon = ' '
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_readonly_file_icon = 'r'
noremap <Leader>f :VimFilerExplorer -find -toggle<CR>


""""""""""""""""""""""""""
" Edit
""""""""""""""""""""""""""
" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'


""""""""""""""""""""""""""
" Language general 
""""""""""""""""""""""""""
" A solid language pack for Vim
Plug 'sheerun/vim-polyglot'


call plug#end()

" sheerun/vimrc includes this
colorscheme wombat256mod



