call plug#begin()

" Dracula theme """"""""""""""""""""""""""""""""""""""
Plug 'dracula/vim', { 'as': 'dracula' }

" Nvim Tree Lua """""""""""""""""""""""""""""""""""""""
Plug 'nvim-tree/nvim-tree.lua'

" Nvim Web Dev Icons """"""""""""""""""""""""""""""""""
Plug 'nvim-tree/nvim-web-devicons'

" Nvim Lua Airline
Plug 'nvim-lualine/lualine.nvim'

"Bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

" Nvim Which Key """"""""""""""""""""""""""""""""""""""
Plug 'folke/which-key.nvim'

" Nvim neodev
Plug 'folke/neodev.nvim'

" Vim Ale
Plug 'dense-analysis/ale'

" Vmm commentary
Plug 'tpope/vim-commentary'

" Toggleterm
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Nvim auto tag
Plug 'windwp/nvim-ts-autotag'

" Nvim autopairs
Plug 'windwp/nvim-autopairs'

" Nvim LSP
Plug 'neovim/nvim-lspconfig'

" Mason LSP package manager
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Cmp autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-calc'

" Lua Sinp
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Nvim fidget
Plug 'j-hui/fidget.nvim'

" Vim/Nvim multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Markdown Web View
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Git signs
Plug 'lewis6991/gitsigns.nvim'

" Editorconfig vim """"""""""""""""""""""""""""""""""""""
Plug 'editorconfig/editorconfig-vim'

" Indent blank line nvim
Plug 'lukas-reineke/indent-blankline.nvim'

" Awesome vim colorschemes """"""""""""""""""""""""""""""""
Plug 'rafi/awesome-vim-colorschemes'

" Nvim treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope Nvim """"""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'master': '0.1.x' }

" Fork Nvim colorizer lua """"""""""""""""""""""""""""""""""""
Plug 'NvChad/nvim-colorizer.lua'

call plug#end()
