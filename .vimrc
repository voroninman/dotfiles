set hidden
set noswapfile
autocmd BufWritePre * %s/\s\+$//e
