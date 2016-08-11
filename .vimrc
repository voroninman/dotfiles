set dir=~/.vim

" Apperance
set relativenumber
set list listchars=trail:·,tab:»·,nbsp:⍽

let mapleader = ","
map <Leader>t :FZF<CR>
map <Leader>s :w<CR>
map <Tab> :bn<CR>
map <Leader>e :Explore<CR>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate' " Autoclose quotes
Plug 'bling/vim-bufferline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
