return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		config = function()
			-- vscode format
			require("luasnip.loaders.from_vscode").lazy_load({ exclude = vim.g.vscode_snippets_exclude or {} })
			require("luasnip.loaders.from_vscode").lazy_load({ paths = "your path!" })
			require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.g.vscode_snippets_path or "" })

			-- snipmate format
			require("luasnip.loaders.from_snipmate").load()
			require("luasnip.loaders.from_snipmate").lazy_load({ paths = vim.g.snipmate_snippets_path or "" })

			-- lua format
			require("luasnip.loaders.from_lua").load()
			require("luasnip.loaders.from_lua").lazy_load({ paths = vim.g.lua_snippets_path or "" })
		end,
	},
}
