" Split navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Undo changes 
nmap <silent> <C-z> <Esc>:u<CR>
imap <silent> <C-z> <Esc>:u<CR><Insert>

" Redo changes 
imap <silent> <C-y> <Esc>:redo<CR><Insert>

" Save file 
nmap <silent> <C-s> :w<CR>
vmap <silent> <C-s> <Esc>:w<CR>
imap <silent> <C-s> <Esc>:w<CR>

" Save file as
nmap <F8> :w<space>
vmap <F8> <Esc>:w<space>
imap <F8> <Esc>:w<space>

" Open a file
nmap <C-o> :e<space>
vmap <C-o> <Esc>:e<space>
imap <C-o> <Esc>:e<space>

" Replace all occurrences of current term under cursor
imap <F5> <Esc>:%s/<c-r><c-w>/newValue/g

" Change word or line to uppercase
imap <F3> <Esc>gUU<Insert>

" Change word or line to lowercase
imap <F4> <Esc>guu<Insert>

" Comment a line with //
imap <F1> <Esc>gcc<Insert>

" Comment a block of line with //
vmap <F2> gc

" Quit editor
nmap <silent> <C-q> :q<CR>
vmap <silent> <C-q> <Esc>:q<CR>
imap <silent> <C-q> <Esc>:q<CR>

" Mark one line or multiple lines
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" Indent to right
vmap <Tab> >v
imap <Tab> <Esc>>><Insert>

" Indent to left 
vmap <S-Tab> <v
imap <S-Tab> <Esc><<<Insert>

" Search
map <C-f> /
vmap <C-f> <Esc>/
imap <C-f> <Esc>/

" Cut
imap <C-x> <Esc>c<End><Insert>
vmap <C-x> c<End><Insert>

" Copy
nmap <C-c> "+y
vmap <C-c> <Esc>"+y
imap <C-c> <Esc>"+y<CR><Insert>

" Paste
imap <C-v> <Esc>"+p<Insert>

" Collapse a code block
nmap <space> za
vmap <space> <Esc>za

" Select all
vmap <C-a> <Esc>ggVG

" Move selected lines to up or down in visual and insert mode
inoremap <silent> <C-S-up> <Esc>:m .-2<CR>==gi
inoremap <silent> <C-S-down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <C-S-down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-S-up> :m '<-2<CR>gv=gv

" Create a emmet
imap <F7> <Esc>:Emmet<space>

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

" Create a tab
nmap <silent> te :tabe<CR>
vmap <silent> te <Esc>:tabe<CR>

" Navigate between buffers
nmap <silent> ty :bn<CR>
vmap <silent> ty <Esc>:bn<CR>

nmap <silent> tr :bp<CR>
vmap <silent> tr <Esc>:bp<CR>

nmap <silent> <C-PageDown> :bn<CR>
vmap <silent> <C-PageDown> <Esc>:bn<CR>
imap <silent> <C-PageDown> <Esc>:bn<CR>

nmap <silent> <C-PageUp> :bp<CR>
vmap <silent> <C-PageUp> <Esc>:bp<CR>
imap <silent> <C-PageUp> <Esc>:bp<CR>

" Delete a buffer
nmap <silent> td :bd<CR>
vmap <silent> td <Esc>:bd<CR>
" nmap <silent> <C-w> :bd<CR>
" vmap <silent> <C-w> <Esc>:bd<CR>

" Create splits
nmap <silent> th :split<CR>
vmap <silent> th <Esc>:split<CR>

nmap <silent> tv :vsplit<CR>
vmap <silent> tv <Esc>:vsplit<CR>

" Open a new buffer with a empty file
nmap <silent> <C-n> :new<CR>
vmap <silent> <C-n> <Esc>:new<CR>
imap <silent> <C-n> <Esc>:new<CR>

" Open terminal
nmap <silent> <C-t> :terminal<CR>
vmap <silent> <C-t> <Esc>:terminal<CR>
imap <silent> <C-t> <Esc>:terminal<CR>
