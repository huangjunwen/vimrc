
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

" The fancy start screen for Vim
Plug 'mhinz/vim-startify'

" Unite and create user interfaces
Plug 'Shougo/unite.vim'

" Powerful file explorer implemented by Vim script
Plug 'Shougo/vimfiler.vim'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = ' '
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_readonly_file_icon = 'r'
nnoremap <silent> - :VimFilerExplorer -toggle -status -auto-cd<CR>

"" Vim plugin that displays tags in a window, ordered by scope
"Plug 'majutsushi/tagbar'
"nnoremap = :TagbarToggle<CR>


""""""""""""""""""""""""""
" Edit
""""""""""""""""""""""""""
" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Async completion framework made ease. (Require vim 8.0 with +python or +python3)
Plug 'maralla/completor.vim'
" Use Tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"


""""""""""""""""""""""""""
" Fuzzy finder
""""""""""""""""""""""""""
" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>


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


call plug#end()

" sheerun/vimrc includes this
colorscheme wombat256mod
