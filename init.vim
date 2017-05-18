" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'tyok/ack.vim'
Plug 'tyok/nerdtree-ack'

" Initialize plugin system
call plug#end()

" Edit/source this file
let s:current_file=expand('<sfile>:p')
if !exists("*EditVimrc")
  function EditVimrc()
    execute 'edit' s:current_file
  endfunction
endif
if !exists("*SourceVimrc")
  function SourceVimrc()
    execute 'source' s:current_file
  endfunction
endif

nnoremap <leader>ev :call EditVimrc()<CR>
nnoremap <leader>sv :call SourceVimrc()<CR>

" Set colorscheme
syntax enable
set background=light
colorscheme solarized
