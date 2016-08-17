set dir=~/.vim

" Apperance
set relativenumber
set list listchars=trail:·,tab:»·,nbsp:⍽

set tabstop=4

let mapleader = ","
map <Leader>t :FZF<CR>
map <Leader>s :w<CR>
map <Tab> :bn<CR>
map <Leader>e :Explore<CR>

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate' " Autoclose quotes
Plug 'bling/vim-bufferline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'fatih/vim-go'
Plug 'airblade/vim-gitgutter'
call plug#end()
