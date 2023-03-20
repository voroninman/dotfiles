autocmd BufWritePre * %s/\s\+$//e
set backspace=2
set hidden
set nobackup
set noswapfile
set nowritebackup
set number

nnoremap Q @q

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-neovim-defaults'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
call plug#end()

" Enable true colors if available
set termguicolors
