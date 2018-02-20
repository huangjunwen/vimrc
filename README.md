# vimrc

My vim configuration, mainly used in Golang development.

# Requirement

- vim 8.0 with +python or +python3
- Golang 1.8+ installed and env setup: `$PATH` and `$GOPATH`

# Install

1. Clone this repo to some path `/path/to/this/repo`
2. Make a symlink: `~/.vim` -> `/path/to/this/repo`; Make sure you backup your original `.vim` and `.vimrc`
3. Open a vim and run `:PlugInstall` to install plugins and tools used by plugins

# Installed Plugins

- https://github.com/junegunn/vim-plug
- https://github.com/sheerun/vimrc
- https://github.com/itchyny/lightline.vim
- https://github.com/mhinz/vim-startify
- https://github.com/Shougo/unite.vim
- https://github.com/Shougo/vimfiler.vim
- https://github.com/jiangmiao/auto-pairs
- https://github.com/maralla/completor.vim
- https://github.com/junegunn/fzf
- https://github.com/junegunn/fzf.vim
- https://github.com/sheerun/vim-polyglot
- https://github.com/fatih/vim-go
- https://github.com/nsf/gocode

# Some key mappings

- Autocompletion using `<Tab>`
- Toggle file explorer using `-`
- `<space>f` to fuzzy find files in current dir
- `<space>h` to fuzzy find history files
- `<space>g` to fuzzy find git files
- `<space>b` to fuzzy find opened buffers

