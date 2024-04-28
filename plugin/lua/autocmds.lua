vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		function HighlightWordUnderCursor()
			local currentWord = vim.fn.expand("<cword>")

			vim.api.nvim_command("match Search /\\<" .. currentWord .. "\\>/")
		end

		HighlightWordUnderCursor()

		local options = {
			focusable = false,
			close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
			border = "rounded",
			source = "always",
			prefix = " ",
			scope = "cursor",
		}
		vim.diagnostic.open_float(nil, options)
	end,
})

vim.api.nvim_create_autocmd("VimLeave", {
	callback = function()
		vim.cmd("mksession! ./Session.vim")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
	callback = function()
		if
			require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
			and not require("luasnip").session.jump_active
		then
			require("luasnip").unlink_current()
		end

		vim.cmd("silent write")
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		local masonPackages = {
			"bash-language-server",
			"buf",
			"css-lsp",
			"dockerfile-language-server",
			"editorconfig-checker",
			"emmet-language-server",
			"eslint-lsp",
			"html-lsp",
			"json-lsp",
			"lua-language-server",
			"prettier",
			"prisma-language-server",
			"stylua",
			"tailwindcss-language-server",
			"typescript-language-server",
			"vim-language-server",
			"yaml-language-server",
		}

		function IsPackageInstalled(package_name)
			local masonPath = vim.fn.stdpath("data") .. "/mason/packages/" .. package_name
			local exists = vim.fn.isdirectory(masonPath) == 1

			return exists
		end

		for _, package in ipairs(masonPackages) do
			if not IsPackageInstalled(package) then
				vim.cmd("Mason")
				vim.cmd("MasonInstall " .. package)
			end
		end
	end,
})
