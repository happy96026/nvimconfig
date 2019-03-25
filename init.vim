﻿call plug#begin('~/.local/share/nvim/plugged')
" Color Scheme
Plug 'skielbasa/vim-material-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'kaicataldo/material.vim'
Plug 'joshdick/onedark.vim'
" Linting, fixing, completion
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim'
" Powershell
Plug 'PProvost/vim-ps1'
" HTML
Plug 'othree/html5.vim'
" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
" CSS
Plug 'JulesWang/css.vim'
" Python
Plug 'zchee/deoplete-jedi'
" C
Plug 'zchee/deoplete-clang'
" PHP
Plug '2072/PHP-Indenting-for-VIm'
"Plug 'captbaritone/better-indent-support-for-php-with-html'
" JSON
Plug 'elzr/vim-json'
" Others
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/echodoc.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'mattn/emmet-vim'
call plug#end()

" Vim Settings
set hidden
set number
"set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab
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
set shellcmdflag=-lc

" seoul256 colorscheme
"set termguicolors
"let g:seoul256_background = 235
"colo seoul256
"set background=dark
"syntax on

" material colorscheme
"set termguicolors
"colorscheme material
"let g:material_theme_style = 'palenight'
"set background=dark
"syntax on

 "onedark colorscheme
colorscheme onedark
if (has("autocmd") && !has("gui_running"))
    augroup colorset
        autocmd!
        let s:colors = onedark#GetColors()
        autocmd ColorScheme * call onedark#set_highlight("cssAttr", { "fg" : s:colors.blue })
        autocmd ColorScheme * call onedark#set_highlight("cssFontAttr", { "fg" : s:colors.blue })
        autocmd ColorScheme * call onedark#set_highlight("cssUnitDecorators", { "fg" : s:colors.red })
    augroup END
endif
syntax on
set termguicolors

" Airline settings
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = "1"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled = 1

autocmd FileType python setlocal nosmartindent

hi NonText guifg=bg

" NerdTree settings
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeHighlightCursorline = 0
"au VimEnter * NERDTree
augroup nerdtreedisablecursorline
    autocmd!
    autocmd FileType nerdtree setlocal nocursorline
augroup end

" NerdCommenter settings
let NERDSpaceDelims = 1

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
\   'typescript': ['prettier'],
\   'json': ["prettier"],
\   'scss': ["prettier"],
\}
let g:ale_linters = {
\   'c': ['clang'], 
\   'python': ['pyls'], 
\   'css': ['stylelint'],
\   'html': ['htmlhint'],
\   'javascript': ['eslint'],
\   'typescript': ['tslint', 'tsserver'],
\   'json': ['jsonlint'],
\}
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)

" echodoc
let g:echodoc#enable_at_startup = 1
set noshowmode

" Deoplete settings
let g:deoplete#enable_at_startup = 1
autocmd FileType typescript call deoplete#custom#buffer_option('auto_complete', v:false)
set completeopt-=preview
"autocmd InsertLeave * silent! pclose!

" Web Dev Icon
"let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"set ambiwidth=double
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" JSON
let g:vim_json_syntax_conceal = 0
