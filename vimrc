
" 'Minimalist Vim Plugin Manager'
call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""
" Basic plugins
"
""""""""""""""""""""""""""

" defaults: Little less sensible yet great vim defaults
Plug 'sheerun/vimrc'

" syntax highlight: A solid language pack for Vim
Plug 'sheerun/vim-polyglot'
"
""""""""""""""""""""""""""
" Extra plugins
"
""""""""""""""""""""""""""

call plug#end()

" sheerun/vimrc includes this
colorscheme wombat256mod

let mapleader = ","
