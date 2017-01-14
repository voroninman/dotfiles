set dir=~/.vim

" Apperance
set relativenumber
set list listchars=trail:·,tab:»·,nbsp:⍽
set colorcolumn=100
hi ColorColumn ctermbg=7

let g:go_fmt_experimental = 1
hi Search ctermbg=7
set autowrite
set nobackup
set noswapfile
set cursorline
set foldlevel=99

let mapleader = "\<Space>"
map <Leader>t :FZF<CR>
map <Leader>s :w<CR>
map <Leader>q :q<CR>
map <Tab> :bn<CR>
map <Leader>e :Explore<CR>
map <Leader>. :@:<CR>

" Python folding
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

au Filetype go nmap gD :GoDef<CR>
au Filetype go set tabstop=4 shiftwidth=4 foldmethod=syntax

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" Plug 'majutsushi/tagbar'
" Plug 'vim-scripts/bufexplorer.zip'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'michaeljsmith/vim-indent-object'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'raimondi/delimitmate' " Autoclose quotes
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
call plug#end()
