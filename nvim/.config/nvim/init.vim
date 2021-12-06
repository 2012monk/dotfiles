" Syntax Highlighting
" if has("syntax")
"    syntax on
" endif

filetype plugin indent on

" set -g TERM xterm-256color
set hlsearch " search highlight
set ruler
set title
set nobackup
set wmnu " tab autocomplete
set showmatch " show match parenthesis
set history=1000
set wrap " display linees as log line
set scrolloff=8
set updatetime=300
set noswapfile
set ignorecase
" set nu
set rnu
set incsearch
set showcmd
set autoread

" set cindent
set si " smart indent
set expandtab " tab -> space
set tabstop=4
set shiftwidth=4
set nocompatible

set undodir=~/.vim/undodir
set undofile
set splitright
" set autoindent
" language indent size
if has("autocmd")
    filetype on
    autocmd FileType vim setlocal ts=2 sts=2 sw=2 et
    autocmd FileType lua setlocal ts=2 sts=2 sw=2 et
    autocmd FileType sh setlocal ts=2 sts=2 sw=2 et
    autocmd FileType json setlocal ts=2 sts=2 sw=2 et
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
    autocmd FileType toml setlocal ts=2 sts=2 sw=2 et
    autocmd FileType graphql setlocal ts=2 sts=2 sw=2 et
endif

source  ~/.config/nvim/plug.vim

" COC setup
set encoding=utf-8

 set hidden

" show white space
set showbreak=↪
set listchars+=eol:¬,tab:→·,trail:-,extends:>,precedes:<

" Done COC
let g:solarized_termcolors=256

" indent setup
let g:indentLine_color_term = 138
" let g:indentLine_bgcolor_term = 138
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
" source ~/.config/nvim/after/plugin/nerdcommneter.vim

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


" cursor at last edit postion
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endi

" if ko encoding ko
" if $LANG[0]=='k' && $LANG[1]=='o'
"     set fileencoding=korea
" endif
"

let g:startify_session_autoload=1
let g:startify_session_dir = '~/.config/nvim/session'

:command Pyrun :w | below new term python3<CR>

set rtp+=/usr/local/opt/fzf

let g:vim_markdown_conceal_code_blocks=0
let g:vim_markdown_conceal=0
let g:vim_markdown_folding_diabled=1

highlight Comment cterm=italic
