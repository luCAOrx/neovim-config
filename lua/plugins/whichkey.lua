return {
	{
		"folke/which-key.nvim",
		config = function()
			local wk = require("which-key")
			local keymapps = require("neovim-configs.keymapps")

			wk.setup({
				window = {
					border = "rounded", -- none, single, double, shadow
					position = "bottom", -- bottom, top
					margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
					padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
					winblend = 0,
				},
				layout = {
					height = { min = 4, max = 25 }, -- min and max height of the columns
					width = { min = 20, max = 50 }, -- min and max width of the columns
					spacing = 3, -- spacing between columns
					align = "left", -- align columns left, center or right
				},
			})

			wk.register(keymapps, {
				prefix = "<leader>",
			})
		end,
	},
}
