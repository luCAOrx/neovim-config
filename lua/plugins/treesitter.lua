return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				modules = { "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
				-- A list of parser names, or "all" (the five listed parsers should always be installed)
				ensure_installed = {
					"bash",
					"css",
					"dockerfile",
					"gitignore",
					"javascript",
					"html",
					"json",
					"lua",
					"markdown",
					"vim",
					"vimdoc",
					"prisma",
					"proto",
					"typescript",
					"yaml",
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				-- List of parsers to ignore installing (or "all")
				ignore_install = { "" },

				-- Install parsers synchronously (only applied to `ensure_installed`)
				-- sync_install = true,
				highlight = {
					enable = true,
					use_languagetree = true,
					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
				rainbow = {
					enable = true,
					-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
					extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
					max_file_lines = nil, -- Do not enable for files with more than n lines, int
					-- colors = {}, -- table of hex strings
					-- termcolors = {} -- table of colour name strings
				},
			})
		end,
	},
}
