" this is my vimrc file"
"set file stats
set ruler

"searching
set hlsearch "highlight search
set showmatch 
set ignorecase	"ignore case in search


" highlight syntax
syntax on



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

" enable 156-color mode
set t_CO=256


"show partial commands in last line of screen
set showcmd 


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
