autocmd BufWritePre * %s/\s\+$//e
set hidden
set nobackup
set nowritebackup
set backspace=2
set number
set cursorline
set guioptions=
set guifont=SFMono-Regular

nnoremap Q @q

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
call plug#end()
