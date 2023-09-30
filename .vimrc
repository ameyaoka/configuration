" this is my vimrc file"
"set file stats
set ruler
set nu rnu 

"searching
set hlsearch "highlight search
set showmatch 
set ignorecase	"ignore case in search

colo murphy

set background=dark 	" set background dark
" highlight syntax
syntax on
colorscheme evening 


"disable arrow keys"

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

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

" Press nn to return to normal mode when in insert mode
inoremap jj <ESC>
inoremap <ESC> <NOP>

" Press jj to return to normal mode when in visual mode
vnoremap jj <ESC>
vnoremap <ESC> <NOP>

" Press jj when in Command mode, to go back to normal mode
cnoremap jj <ESC>



" enable 156-color mode
set t_CO=256


"show partial commands in last line of screen
set showcmd 

" switching between buffers"
nnoremap <F5> :buffers<CR>:buffer<Space>

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



" run python from vim 
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

