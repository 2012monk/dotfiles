" Syntax Highlighting
" if has("syntax")
"    syntax on
" endif

filetype plugin on
"set -g TERM xterm-256color
set si " smart indent
set hlsearch " search highlight
set ruler
set title
set nobackup
set wmnu " tab autocomplete
set showmatch " show match parenthesis
set expandtab " tab -> space
set tabstop=4
set shiftwidth=4
set history=1000
set nowrap
set autoindent
set cindent
set nu
set incsearch
set showcmd

" COC setup
set encoding=utf-8

set hidden


" Done COC
let g:solarized_termcolors=256

if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif
"
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'cohama/lexima.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'yggdroot/indentline' " Indent
Plug 'scrooloose/nerdcommenter' " comment

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fzf vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'johngrib/vim-game-code-break'

Plug 'mhinz/vim-startify' " session manage

Plug 'easymotion/vim-easymotion' " easymotion

Plug 'tpope/vim-surround'

Plug 'majutsushi/tagbar'
" lsp
if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'preservim/nerdtree'
    " nerdtree git
    Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin'
endif

call plug#end()

" indent setup
"let g:indentLine_color_term = 230
let g:indentLine_bgcolor_term = 138 
noremap < <<
noremap > >>
vnoremap < <gv
vnoremap > >gv

syntax enable
set background=dark
colorscheme gruvbox

" NerdTree key map
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-p> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" FZF key map
nnoremap <C-t> :Files <CR>

" NerdCommenter Keymap
source ~/.config/nvim/after/plugin/nerdcommneter.vim

nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
nmap <C-l> <plug>NERDComenterComment
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

if has('nvim')
    :tnoremap <A-h> <C-\><C-n><C-w>h
    :tnoremap <A-j> <C-\><C-n><C-w>j
    :tnoremap <A-k> <C-\><C-n><C-w>k
    :tnoremap <A-l> <C-\><C-n><C-w>l
endif
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" easymotion
map <Leader> <Plug>(easymotion-prefix)

