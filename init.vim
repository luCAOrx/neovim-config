call plug#begin()

"""""""""""""""""" AUTO COMPLETE """""""""""""""""
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-calc'
Plug 'f3fora/cmp-spell'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

"" LSP PACKAGE MANAGER
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""" USER INTERFACE """"""""""""""""
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'folke/which-key.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'NvChad/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'j-hui/fidget.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'master': '0.1.x' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""" CODE UTILITIES """""""""""""""""""
Plug 'folke/neodev.nvim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'stevearc/conform.nvim'
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#end()
