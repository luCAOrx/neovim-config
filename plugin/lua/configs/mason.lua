require("mason").setup({
	ui = {
		icons = {
			package_pending = " ",
			package_installed = "󰄳 ",
			package_uninstalled = " ",
		},
	},
})

require("mason-lspconfig").setup({})
