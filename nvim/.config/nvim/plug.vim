if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif
"
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Plug 'altercation/vim-colors-solarized'
" Plug 'ntpeters/vim-better-whitespace'
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

Plug 'wakatime/vim-wakatime'

Plug 'plasticboy/vim-markdown'

" lsp
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'preservim/nerdtree'
  " nerdtree git
  Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons'
    " \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
endif

call plug#end()

" better white space
" let g:better_whitespace_ctermcolor='yellow'
" let g:better_whitespace_guicolor='#770000'
" let g:show_spaces_that_precede_tabs=1
" let g:better_whitespace_verbosity=1
" let g:current_line_whitespace_disabled_hard=1
" let g:strip_whitespace_on_save=1
" let g:better_whitespace_enabled=1
" for f in split(glob('~/.config/nvim/after/plugin/*.vim'), '\n')
"   exe 'source' f
" endfor
