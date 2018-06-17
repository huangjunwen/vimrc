
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

function FileExplorerToggle()
  let l:bufname = 'fe'
  if bufwinnr(l:bufname) > 0
    exe "VimFilerClose '".l:bufname."'"
  else
    exe "VimFilerExplorer -buffer-name='".l:bufname."' -find -direction=rightbelow -status -auto-cd"
  endif
endfunction
nnoremap <silent> - :call FileExplorerToggle()<CR>


" A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
nnoremap <Leader>? :Maps<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>


"" Vim plugin that displays tags in a window, ordered by scope
"Plug 'majutsushi/tagbar'
"nnoremap = :TagbarToggle<CR>


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
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


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

" Do not wrap line 
au BufNewFile,BufRead *.go set nowrap
"
""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""

" Auto format python code on save
autocmd BufWritePre *.py 0,$!yapf

""""""""""""""""""""""""""
" GPG
""""""""""""""""""""""""""
" This script implements transparent editing of gpg encrypted files.
Plug 'jamessan/vim-gnupg'


call plug#end()

" sheerun/vimrc includes this
colorscheme wombat256mod
