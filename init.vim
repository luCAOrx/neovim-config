call plug#begin()

" Dracula theme """"""""""""""""""""""""""""""""""""""
Plug 'dracula/vim', { 'as': 'dracula' }

" Vim airline """"""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim devicons """"""""""""""""""""""""""""""""""""""""
Plug 'ryanoasis/vim-devicons'

" Coc nvim """"""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" Auto pairs """"""""""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'

" Vim gitgutter """"""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'

" Vim fugitive """"""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'

" Vim multiple cursors """"""""""""""""""""""""""""""""""
Plug 'terryma/vim-multiple-cursors'

" VIm commentary """"""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-commentary'

" Editorconfig vim """"""""""""""""""""""""""""""""""""""
Plug 'editorconfig/editorconfig-vim'

" Vim css color """"""""""""""""""""""""""""""""""""""""""
" Plug 'ap/vim-css-color'

" Vim hexokinase """"""""""""""""""""""""""""""""""""""""""
" Plug 'RRethy/vim-hexokinase'

" IndentLine """"""""""""""""""""""""""""""""""""""""""""""
" Plug 'Yggdroot/indentLine'

" Indent blank line nvim
Plug 'lukas-reineke/indent-blankline.nvim'

" Awesome vim colorschemes """"""""""""""""""""""""""""""""
Plug 'rafi/awesome-vim-colorschemes'

" Nvim treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Emmet vim """"""""""""""""""""""""""""""""""""""""""""""""
Plug 'mattn/emmet-vim'

" Nvim ts rainbow """"""""""""""""""""""""""""""""""""""""""
Plug 'p00f/nvim-ts-rainbow'

" Telescope Nvim """"""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Nvim colorizer lua """"""""""""""""""""""""""""""""""""""""
" Plug 'norcalli/nvim-colorizer.lua'

" Fork Nvim colorizer lua """"""""""""""""""""""""""""""""""""
Plug 'NvChad/nvim-colorizer.lua'

call plug#end()
