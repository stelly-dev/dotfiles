" Install vim-plug if not found
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.local/share/nvim/plugged')

Plug('nerdypepper/agila.vim')

Plug('chrisbra/Colorizer')

Plug('junegunn/goyo.vim')

call plug#end()


let mapleader=','

set termguicolors

syntax enable
colorscheme agila


