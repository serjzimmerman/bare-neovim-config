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

" Pane movement
" Move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L
" Move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:deoplete#enable_at_startup = 1

" https://stackoverflow.com/questions/14658600/what-is-the-vim-command-to-quit-all-open-windows?rq=1
" Terminal
autocmd VimEnter * terminal
se splitright
autocmd VimEnter * NERDTree

" Autosave plugin
lua << EOF
local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF

" https://github.com/morhetz/gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

" Clang-format
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{BasedOnStyle: LLVM, IndentWidth: 2, }"']
\}
let g:neoformat_enabled_cpp = ['clang-format']
let g:neoformat_enabled_c = ['clang-format']
