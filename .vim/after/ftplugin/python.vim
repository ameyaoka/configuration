
" run python code in shell 
nnoremap <buffer> <leader>r <Esc>:w<CR>:!clear;sh %<CR>


" debug python code 
nmap <buffer> <leader>b oimport ipdb;ipdb.set_trace(context=5)<ESC>



" enable all Python syntax highlighting features
let python_highlight_all = 1


" mark extra white spaces as bad
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

