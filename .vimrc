set dir=~/.vim

set list listchars=trail:·,tab:»·,nbsp:⍽
set tabstop=4
set noswapfile
set confirm
set mouse=a
set autowriteall
colorscheme pablo
highlight LineNr ctermfg=239
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
nmap <Leader>h :nohl<CR>
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>

augroup qf
	autocmd!
	autocmd FileType qf set nobuflisted
augroup END

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
let g:airline_theme='minimalist'
let g:deoplete#enable_at_startup = 1
let tmux_navigator_no_mappings = 1

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'raimondi/delimitmate' " Autoclose quotes
Plug 'ruanyl/vim-gh-line'
" Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive' " Git
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

nnoremap <silent> <A-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <A-j> :TmuxNavigateDown<CR>
nnoremap <silent> <A-k> :TmuxNavigateUp<CR>
nnoremap <silent> <A-l> :TmuxNavigateRight<CR>

