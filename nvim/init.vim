" neovim config file
" Author: Sergei Zimmerman
" Date: 16.11.2021

se showmatch

se mouse=v

se tabstop=2
se softtabstop=2
se expandtab

se shiftwidth=2
se autoindent
se number

se cc=80

filetype plugin indent on
syntax on

se mouse=a
se clipboard=unnamedplus

filetype plugin on

se cursorline
se ttyfast

source $HOME/.config/nvim/vim-plug/plugins.vim

" Set vscode dark theme
colorscheme codedark

" Pane movement
" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:coq_settings = { 'auto_start': v:true }

" https://stackoverflow.com/questions/14658600/what-is-the-vim-command-to-quit-all-open-windows?rq=1
" Terminal
se splitdown
autocmd VimEnter * terminal
se splitright
autocmd VimEnter * NERDTree
