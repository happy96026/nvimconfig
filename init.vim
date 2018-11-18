call plug#begin('~/.local/share/nvim/plugged')
Plug 'skielbasa/vim-material-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'kaicataldo/material.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'PProvost/vim-ps1'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'JulesWang/css.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'zchee/deoplete-jedi'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rbgrouleff/bclose.vim'
"Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'autozimu/LanguageClient-neovim', {
\   'branch': 'next',
\   'do': 'bash install.sh',
\}
call plug#end()

" Vim Settings
set hidden
set number
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
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

" Web Dev Icon
"let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"set ambiwidth=double
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
