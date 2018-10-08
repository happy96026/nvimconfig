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
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'zchee/deoplete-jedi'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'daeyun/vim-matlab'
Plug 'rbgrouleff/bclose.vim'
call plug#end()

" Vim Settings
set hidden
set number
set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab smarttab
set autoindent copyindent
set hlsearch
"set autochdir
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
let $NYAOVIMRC = "~/.config/nyaovim/nyaovimrc.html"
let g:NERDTreeChDirMode = 2
"set cursorline

" seoul256 colorscheme
"let g:seoul256_background = 236
"colo seoul256
"set background=dark
"syntax on

" material colorscheme
set termguicolors
set background=dark
colorscheme material
let g:material_theme_style = 'dark'
syntax on

" Airline settings
let g:airline_theme = 'material'
let g:airline_powerline_fonts = "1"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled = 1
set termguicolors

autocmd FileType python setlocal nosmartindent

hi NonText guifg=bg

" Nerdtree settings
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeHighlightCursorline = 0
au VimEnter * NERDTree

" IndentLines settings
let g:indentLine_char = '|'

" Ale settings
let g:ale_lint_on_text_changed = 'never'
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 0
let g:ale_linters = {'python': ['pylint'], 'html': ['htmlhint'], 'javascript': ['eslint'], 'css': ['stylelint']}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

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
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ' '
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
