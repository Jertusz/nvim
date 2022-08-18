"Plugins
call plug#begin('~/.config/nvim/plugged')
 
"AutoComplete
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ncm2/float-preview.nvim'
 
call plug#end()

set nobackup noswapfile   " do not keep backups or swaps
set undofile
set nocompatible
 
 
filetype off
 
syntax on
 
set ttyfast
 
filetype plugin indent on
 
 
set modelines=0
 
 
" Share clipboard with system
set clipboard=unnamed
set nowrap
 
set number
set relativenumber
 
set encoding=utf-8
set cursorline
highlight CursorLine ctermbg=0 cterm=bold
 
"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
 
"proper PEP 8 indent
set colorcolumn=80 
highlight ColorColumn ctermbg=0 guibg=lightgrey
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set smarttab
set smartindent
 

" Deoplete
let g:deoplete#enable_at_startup = 1

" Deoplete jedi
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources#jedi#enable_short_types = 1

" NERDTree
autocmd VimEnter * NERDTree " Auto open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:nerdtree_tabs_focus_on_files=1

" NERDTree git
let g:NERDTreeGitStatusConcealBrackets = 1
