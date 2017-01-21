set nocompatible              " required
set encoding=utf-8
set clipboard=unnamed
filetype off                  " required
set backspace=2
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'vim-syntastic/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dracula/vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

" buffers
" Alt + {H, L} -> b{next, prev}
nnoremap ¬ :bnext<CR>
nnoremap ˙ :bprevious<CR>
" Close buffer with alt-w
nnoremap ∑ :bdelete<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufRead *.js set makeprg=eslint\ %
autocmd filetype javascript set sw=2 ts=2 expandtab
let g:acp_completeoptPreview=1

set colorcolumn=79
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix
    \let python_highlight_all = 1


let python_highlight_all=1
syntax on
" nerdtree ignore
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:NERDTreeWinSize = 40

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
" Always show statusline
set laststatus=2

colorscheme dracula
set cursorline

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" jedi
let g:jedi#use_splits_not_buffers = "right"

" use ag for ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
