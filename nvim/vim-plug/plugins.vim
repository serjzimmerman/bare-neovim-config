" https://www.chrisatmachine.com/Neovim/01-vim-plug/

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'tomasiser/vim-code-dark',
  Plug 'mhinz/vim-startify',
  Plug 'scrooloose/nerdtree',
  Plug 'ms-jpq/coq_nvim',
  Plug 'Olical/aniseed',
  Plug 'jlesquembre/nterm.nvim', 
  Plug 'akinsho/toggleterm.nvim',
call plug#end()
