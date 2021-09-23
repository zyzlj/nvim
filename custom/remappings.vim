" ************************************
" Basic Mapping For Current
"
" Set <LEADER> as <SPACE>, ; as :
let mapleader=","
" noremap ; :

" Save & quit
noremap Q :qa<CR>
noremap <LEADER>qt :tabclose<CR>
noremap <LEADER>qa :qa<CR>
" noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
noremap <LEADER>rv :e .nvimrc<CR>

" Undo operations
" noremap l u

" Insert Key
" Why???
" noremap k i
" noremap K I

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Delete find pair
" nnoremap dy d%

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" nnoremap <c-n> :tabe<CR>:-tabmove<CR>:term lazynpm<CR>


" ===
" === Cursor Movement
" ===
" Not for me
"     ^
"     j
" < h   l >
"     k
"     v

" U/E keys for 5 times u/e (faster navigation)
noremap <silent> U 30k
noremap <silent> E 30j

" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> I $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-U> 5<C-y>
noremap <C-E> 5<C-e>

source $XDG_CONFIG_HOME/nvim/cursor.vim

"If you use Qwerty keyboard, uncomment the next line.
"source $XDG_CONFIG_HOME/nvim/cursor_for_qwerty.vim

" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>


" ===
" === Searching
" ===
noremap - N
noremap = n


" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l
noremap qf <C-w>o

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap se :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap si :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tn :tabe<CR>
noremap tN :tab split<CR>
" Move around tabs with tn and ti
noremap tk :-tabnext<CR>
noremap tj :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmk :-tabmove<CR>
noremap tmj :+tabmove<CR>


" ===
" === Markdown Settings
" ===
" Snippets
source $XDG_CONFIG_HOME/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Opening a terminal window
noremap <LEADER>cmd :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet 

" find and replace
noremap \s :%s//g<left><left>

" set wrap
noremap <LEADER>sw :set wrap<CR>

" press f10 to show hlgroup
function! SynGroup()
	let l:s = synID(line('.'), col('.'), 1)
	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
map <F10> :call SynGroup()<CR>
