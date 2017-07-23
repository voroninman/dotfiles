set dir=~/.vim

set list listchars=trail:·,tab:»·,nbsp:⍽
set noswapfile
set confirm
let mapleader = "\<Space>"
nmap <Leader>s :w<CR>
nmap <Leader>S :wq<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>; :History:<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>. :@:<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>f :Ag<CR>
nmap <Leader>r :BLines<CR>
nmap <Leader>x :bd<CR>
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
if has('nvim')
	tnoremap <A-h> <C-\><C-n><C-w>h
	tnoremap <A-j> <C-\><C-n><C-w>j
	tnoremap <A-k> <C-\><C-n><C-w>k
	tnoremap <A-l> <C-\><C-n><C-w>l
endif

let g:airline_section_z = '%4l:%-4c %3p%%'
let g:airline#extensions#tabline#enabled = 1

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'raimondi/delimitmate' " Autoclose quotes
Plug 'ruanyl/vim-gh-line'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive' " Git
call plug#end()

