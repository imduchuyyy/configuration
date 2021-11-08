" set the runtime path to include Vundle and initialize
syntax on
set nocompatible              " be iMproved, required
set shiftwidth=4
set tabstop=4
set expandtab
set ai
set number
set ruler
set ignorecase
set noswapfile
set hlsearch
set t_Co=256
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" all plugin
Plugin 'easymotion/vim-easymotion'
Plugin 'tomlion/vim-solidity'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tasn/vim-tsx'
Plugin 'morhetz/gruvbox'
Plugin 'alvan/vim-closetag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme peachpuff
map / <Plug>(easymotion-sn)
"colorscheme gruvbox


"close tag
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'
