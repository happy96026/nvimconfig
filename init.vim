call plug#begin('~/.local/share/nvim/plugged')
" Linting, fixing, completion
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim'
" Powershell
Plug 'PProvost/vim-ps1'
" HTML
Plug 'othree/html5.vim'
" JS
Plug 'pangloss/vim-javascript'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" CSS
Plug 'JulesWang/css.vim'
" Python
Plug 'zchee/deoplete-jedi'
" C
Plug 'zchee/deoplete-clang'
" Others
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/echodoc.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Vim Settings
set hidden
set number
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
"set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab
set autoindent copyindent
set hlsearch
set scrolloff=3
set clipboard=unnamedplus
set mouse=a
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>
map <leader>w :w<CR>
vmap j gj
vmap k gk
nmap j gj
nmap k gk
filetype plugin indent on
set cursorline
set rnu
set shell=powershell
"set shellcmdflag=-lc
hi NonText guifg=bg
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

autocmd FileType python setlocal nosmartindent

" IndentLines settings
let g:indentLine_char = '|'

" Ale settings
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
"let g:ale_sign_column_always = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'css': ["prettier"],
\   'html': ["prettier"],
\   'javascript': ["prettier"],
\   'json': ["prettier"],
\}
let g:ale_linters = {
\   'c': ['clang'], 
\   'python': ['pyls'], 
\   'css': ['stylelint'],
\   'html': ['htmlhint'],
\   'javascript': ['eslint'],
\   'json': ['jsonlint'],
\}
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)

" echodoc
let g:echodoc#enable_at_startup = 1
set noshowmode

" Deoplete settings
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
"autocmd InsertLeave * silent! pclose!
