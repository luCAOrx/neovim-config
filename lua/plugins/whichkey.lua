return {
	{
		"folke/which-key.nvim",
		config = function()
			local wk = require("which-key")
			local keymapps = require("neovim-configs.keymapps")

			wk.add(keymapps, {
				prefix = "<leader>",
			})
		end,
	},
}
