" Make sure vim-plug is installed
let s:vim_plug_file="~/.local/share/nvim/site/autoload/plug.vim"
if !filereadable(expand(s:vim_plug_file))
    echom system("curl -fLo " . s:vim_plug_file . " --create-dirs "
    \ . "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
endif

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'craigemery/vim-autotag'
Plug 'ervandew/supertab'
Plug 'gregsexton/gitv'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tyok/ack.vim'
Plug 'tyok/nerdtree-ack'
Plug 'weynhamz/vim-plugin-minibufexpl'

" Initialize plugin system
call plug#end()

" Edit/source this file
let s:current_file=expand('<sfile>:p')
if !exists("*EditVimrc")
  function EditVimrc()
    execute 'split' s:current_file
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

" Buffer configuration
set hidden
nmap ff :bnext<CR>
nmap FF :bprevious<CR>

" Misc. mapings
imap jj <Esc>

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Gitv configuration
let g:Gitv_OpenPreviewOnLaunch = 0
