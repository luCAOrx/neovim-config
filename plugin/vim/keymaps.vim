"Navigate between split windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Undo changes
nmap <silent> <C-z> <Cmd>u<CR>
imap <silent> <C-z> <Cmd>u<CR>

" Redo changes
nmap <silent> <C-y> <Cmd>redo<CR>
imap <silent> <C-y> <Cmd>redo<CR>

" Save file
nmap <silent> <C-s> :w!<CR>
vmap <silent> <C-s> <Esc>:w!<CR>
imap <silent> <C-s> <Esc>:w!<CR>

" Save file as
nmap <C-S-s> :w!<space>
vmap <C-S-s> <Esc>:w!<space>
imap <C-S-s> <Esc>:w!<space>

" Open a file
nmap <C-o> :e<space>
vmap <C-o> <Esc>:e<space>
imap <C-o> <Esc>:e<space>

" Replace all occurrences of current term under cursor
imap <F5> <Esc>:%s/<c-r><c-w>/newValue/g

" Change word or line to uppercase
vmap <F3> <Esc>gUU
imap <F3> <Esc>gUU

" Change word or line to lowercase
vmap <F4> <Esc>guu
imap <F4> <Esc>guu

" Comment 1 line
imap <F1> <Esc>gcc
vmap <F1> <Esc>gcc

" Comment multiple lines
imap <F2> <Esc>gc
vmap <F2> gc

" Quit editor
nmap <silent> <C-q> :q<CR>

" Launch Nvim Tree
nmap <M-b> <Cmd>NvimTreeToggle<CR>

" Launch webview panel markdown-preview-enhanced
nmap <silent> <F9> <Cmd>MarkdownPreview<CR>

" Mark one line or multiple lines
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
vmap <C-x> c<End>

" Copy
nmap <C-c> "+y
vmap <C-c> <Esc>"+y
imap <C-c> <Esc>"+y<CR><Insert>

" Paste
imap <C-v> <Esc>"+p<Insert>

" Collapse a code block
nmap <C-[> <Esc>za

" Select all
vmap <C-a> <Esc>ggVG

" Move selected lines to up or down in visual and insert mode
inoremap <silent> <C-S-up> <Esc>:m .-2<CR>==gi
inoremap <silent> <C-S-down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <C-S-down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-S-up> :m '<-2<CR>gv=gv

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

" Create a new buffer
nmap <silent> <M-t> :tabe<CR>

" Navigate between buffers
nmap <silent> <M-Down> :bn<CR>
nmap <silent> <M-Up> :bp<CR>

" Close current buffer
nmap <silent> <M-w> :bd<CR>

" Create splits
nmap <silent> <M-h> :split<CR>
nmap <silent> <M-v> :vsplit<CR>

" Open terminal
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" Re ordering buffers
nnoremap <M-S-Up> <Cmd>BufferLineMoveNext<CR>
nnoremap <M-S-Down> <Cmd>BufferLineMovePrev<CR>
