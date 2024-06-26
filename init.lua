require("neovim-configs")
require("install-lazy")

local opts = {
	install = {
		missing = true,
		colorscheme = { "dracula" },
	},
	checker = {
		enabled = true,
		concurrency = nil,
		notify = false,
		frequency = 3600,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
}

require("lazy").setup("plugins", opts)
