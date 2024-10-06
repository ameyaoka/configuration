" this is my vimrc file"

"set file stats
set ruler
set nu rnu 

"searching
set hlsearch "highlight search
set showmatch 
set ignorecase	"ignore case in search

" remove highlighted words with space
nnoremap <Space> :noh<CR>


" if no filetype specified, set ft=markdown (alternative would be text)

autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif

colo murphy

set background=dark 	" set background dark

" highlight syntax
syntax on
filetype on 
colorscheme evening 


" status line  
" Always display status line : file name which is open 

set laststatus=2

"display file name on status line"  
set statusline=%f

set statusline+=\ %h%w%m%r
set statusline+=%=
set statusline+=\ %P/%L
set statusline+=\ [%{mode()}]\ %y



"disable arrow keys :  use h j k l instead "  

" Remove newbie crutches in Command Mode
""  cnoremap <Down> <Nop>
"" cnoremap <Left> <Nop>
"" cnoremap <Right> <Nop>
"" cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>


" remapping keys 

" Press jj to return to normal mode when in insert mode

inoremap jj <ESC>
inoremap <ESC> <NOP>

" Press jj to return to normal mode when in visual mode

vnoremap jj <ESC>
vnoremap <ESC> <NOP>

" Press jj when in Command mode, to go back to normal mode

cnoremap jj <ESC>

"  auto complete word from dictionary 
imap .. <C-N>


" enable 156-color mode
set t_CO=256


"show partial commands in last line of screen
set showcmd 

" switching between buffers"

nnoremap <F5> :w<CR>:buffers<CR>:buffer<Space>

set autoindent " copy indent form current line staring
set smartindent " even better indent eg add indent after '{'

set cursorline   " highlight current line

set showmatch  " highlight matching parantheses

set spell   	"enable  spelling-checking

set confirm 	" promt confirmation dialogs

set wildmenu  " shows list insted of completing

set wildmode=list:longest,full " command <tab> completion
set pastetoggle=<F4>	" toggle paste mode and avoid auto indent 
set scrolloff=5 	" display 5 lines below cursor

set omnifunc=syntaxcomplete#Complete


" Custom key mapping to copy Vim selection to xclip to past outside vim ( need to install xclip if not present )

vnoremap <C-c> :w !xclip -selection clipboard<CR><CR>

" automatically add closing brackets  and inverted comma 
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " "" <left>
inoremap ' '' <left>
inoremap /* /* */ <Left>
inoremap ** ** ** <left>



set omnifunc=syntaxcomplete#Complete



set complete+=k~/.vim/keywords.txt


" when pressed <F9> write compile and run file based on file type 

"   
nnoremap <F9> :call CompileAndRun()<CR>


function! CompileAndRun()
    " Get the current file type
    let l:filetype = &filetype

    " Save the current file
    write

    " Define the command to compile and execute based on the file type
    if l:filetype == 'c'
        let l:command = 'gcc % -o %< && ./%<'
    elseif l:filetype == 'cpp'
        let l:command = 'g++ % -o %< && ./%<'
    elseif l:filetype == 'python'
        let l:command = 'python3 %'

    elseif l:filetype == 'java'
        let l:command = 'javac % && java %<'

    elseif l:filetype == 'sh'
        let l:command = 'bash %'

    elseif l:filetype == 'javascript'
	" Open the file in the default web browser
	let l:command = 'xdg-open %'
    else
        echo "No compile and run command defined for file type: " . l:filetype
        return
    endif

    " Execute the command
   execute '!' . l:command
endfunction


" compile java code and create jar file for hadoop "    

map <F7> :w<CR>:!javac -source 8 -target 8 -cp /home/ameya/c-dac/big_data/hadoop-common.jar:/home/ameya/c-dac/big_data/hadoop-mapreduce-client-core.jar % <CR> 

" run streamilt   
map <F8> :w<CR>:! streamlit run %<CR>

" run flask    
map <F6> :w<CR>:! flask run <CR>
