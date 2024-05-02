return {
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				filetypes = {
					"html",
					"xml",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"jsx",
					"tsx",
					"json",
					"yaml",
					"css",
				},
			})
		end,
	},
}
