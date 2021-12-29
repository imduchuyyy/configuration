" set the runtime path to include Vundle and initialize
let mapleader = " "
syntax on
set nocompatible              " be iMproved, required
set shiftwidth=2
set tabstop=2
"set expandtab
set ai
set number
set ruler
set ignorecase
set noswapfile
set hlsearch
"set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" all plugin
Plugin 'easymotion/vim-easymotion'
Plugin 'alvan/vim-closetag'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}

Plugin 'tomlion/vim-solidity'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf',  {'do': { -> fzf#install()  }}
"Plugin 'Yggdroot/indentLine'
Plugin 'dracula/vim'
Plugin 'tasn/vim-tsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype off
filetype plugin indent on    " required

let g:dracula_italic = 0

set background=dark
colorscheme peachpuff
"colorscheme dracula

" change cursor shape when change mode
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"

" coc-nvim goto definition 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> rn <Plug>(coc-rename)
nmap <leader>fc  <Plug>(coc-fix-current)


" easymotion setting 
map / <Plug>(easymotion-sn)

" coc-nvim formatting
command! -nargs=0 Format :call CocAction('format')
nmap <Leader>f :Format <CR>

" Multi selected
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

" auto closetag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue,*.tsx,*.ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


" disable auto close pair for <
let b:coc_pairs_disabled = ['<', '>']

" remove highlight after search
map <C-h> :nohl <CR>

" fzf setting
noremap <C-f> :Files<CR>
noremap ; :Buffers<CR>
nnoremap K :Ag <C-R><C-W><CR>
nnoremap <C-k> /<C-R><C-W><CR>
nnoremap \ :Rg<CR>

set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow
let g:rg_derive_root='true'

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
