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
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'
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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dracula/vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/yajs'
Plugin 'sheerun/vim-polyglot'
Plugin 'moll/vim-node'
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
nnoremap <C-H> <C-w>h
if has('nvim')
     nmap <BS> <C-W>h
 endif

au BufRead *.js set makeprg=eslint\ %
autocmd filetype javascript set sw=2 ts=2 expandtab

let g:acp_completeoptPreview=1

set colorcolumn=80

let python_highlight_all=1
syntax on

" nerdtree ignore
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:NERDTreeWinSize = 40

map <C-N> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

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

set lazyredraw

set grepformat=%f:%l:%c:%m

" jk is escape now
inoremap jk <ESC>

" leader ,
let mapleader = ","
" search selected text
vnoremap // y/<C-R>"<CR>

" Tabwidth
" - Python
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType python set tabstop=4
set expandtab

" - HTML
autocmd FileType html set shiftwidth=2
autocmd FileType html set softtabstop=2
autocmd FileType html set tabstop=2

" - HTML-Django
autocmd FileType htmldjango set shiftwidth=2
autocmd FileType htmldjango set softtabstop=2
autocmd FileType htmldjango set tabstop=2

" - CSS
autocmd FileType css set shiftwidth=2
autocmd FileType css set softtabstop=2
autocmd FileType css set tabstop=2

" - JavaScript
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set tabstop=2

" Abbreviations
iabbrev *args, *args, **kwargs
iabbrev blank=True, blank=True, null=True
iabbrev null=True, null=True, blank=True
iabbrev ipdb from ipdb import set_trace; set_trace()

set foldenable          " enable folding

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" let g:syntastic_javascript_checkers = ['eslint']


let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/skroustouris/.vimundo/


let g:user_emmet_settings = {
                        \  'javascript' : {
                        \      'extends' : 'jsx',
                        \  },
                        \}

