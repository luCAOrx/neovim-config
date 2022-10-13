syntax on                 " Enable syntax highlight
set nu                    " Enable line numbers
set tabstop=2             " Show existing tab with 2 spaces width
set softtabstop=2         " Show existing tab with 2 spaces width
set shiftwidth=2          " When indenting with '>', use 2 spaces width
set expandtab             " On pressing tab, insert 2 spaces
set smarttab              " insert tabs on the start of a line according to shift width
set smartindent           " Automatically inserts one extra level of indentation in some cases
set autoindent            " Enable automatic indentation
set hidden                " Hides the current buffer when a new file is opened
set incsearch             " Incremental search
set ignorecase            " Ignore case in search
set smartcase             " Consider case if there is a upper case character
set scrolloff=8           " Minimum number of lines to keep above and below the cursor
set colorcolumn=100       " Draws a line at the given line to keep aware of the line size
set signcolumn=yes        " Add a column on the left. Useful for linting
set cmdheight=2           " Give more space for displaying messages
set updatetime=100        " Time in milliseconds to consider the changes
set encoding=utf-8        " The encoding should be utf-8 to activate the font icons
set nobackup              " No backup files
set nowritebackup         " No backup files
set splitright            " Create the vertical splits to the right
set splitbelow            " Create the horizontal splits below
set autoread              " Update vim after file update from outside
set mouse=a               " Enable mouse support
set history=1000          " By default vim stores the last 50 commands you typed in your history
set cursorline            " Highlights the line where the cursor is positioned
set clipboard+=unnamedplus " Enable clipboard sharing between vim and GUI
set foldmethod=syntax     " Collapses or expands the code block
set foldlevel=99          " Folds with a level higher than this number will be closed
set ttimeoutlen=50
set showmatch
filetype on               " Detect and set the file type option and trigger the File Type Event
filetype plugin on        " Load the plugin file for the file type, if any
filetype indent on        " Load the indent file for the file type, if any
