return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/neodev.nvim",
		},
		config = function()
			require("neodev").setup({})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			local servers = {
				"bashls",
				"cssls",
				"dockerls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"prismals",
				"tailwindcss",
				"tsserver",
				"vimls",
				"yamlls",
			}

			for _, server in ipairs(servers) do
				if server == "lua_ls" then
					lspconfig[server].setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								completion = {
									callSnippet = "Replace",
								},
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					})
				else
					lspconfig[server].setup({
						-- on_attach = my_custom_on_attach,
						capabilities = capabilities,
					})
				end
			end

			lspconfig.bashls.setup({})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.dockerls.setup({})

			lspconfig.emmet_language_server.setup({})

			lspconfig.eslint.setup({})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({})

			lspconfig.prismals.setup({})

			lspconfig.tailwindcss.setup({})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.vimls.setup({})

			lspconfig.yamlls.setup({})

			-- Customizing how diagnostics are displayed
			vim.diagnostic.config({
				-- Change prefix/character preceding the diagnostics' virtual text
				virtual_text = {
					prefix = "●", -- Could be '●', '▎', 'x'
					-- Show source in diagnostics
					source = "always", -- Or "if_many"
				},
				float = {
					-- Show source in diagnostics
					source = "always", -- Or "if_many"
				},
				signs = true,
				underline = true,
				update_in_insert = true,
				severity_sort = true,
			})

			-- Change diagnostic symbols in the sign column (gutter)
			local signs = { Error = " ", Warn = " ", Hint = "󰌵 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end

			-- Highlight line number instead of having icons in sign column
			for _, diag in ipairs({ "Error", "Warn", "Info", "Hint" }) do
				vim.fn.sign_define("DiagnosticSign" .. diag, {
					text = "",
					texthl = "DiagnosticSign" .. diag,
					linehl = "",
					numhl = "DiagnosticSign" .. diag,
				})
			end

			-- Print diagnostics to message area
			function PrintDiagnostics(opts, bufnr, line_nr, client_id)
				bufnr = bufnr or 0
				line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
				opts = opts or { ["lnum"] = line_nr }

				local line_diagnostics = vim.diagnostic.get(bufnr, opts)
				if vim.tbl_isempty(line_diagnostics) then
					return
				end

				local diagnostic_message = ""
				for i, diagnostic in ipairs(line_diagnostics) do
					diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
					print(diagnostic_message)
					if i ~= #line_diagnostics then
						diagnostic_message = diagnostic_message .. "\n"
					end
				end
				vim.api.nvim_echo({ { diagnostic_message, "Normal" } }, false, {})
			end

			local function goto_definition(split_cmd)
				local util = vim.lsp.util
				local log = require("vim.lsp.log")
				local api = vim.api

				-- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
				local handler = function(_, result, ctx)
					if result == nil or vim.tbl_isempty(result) then
						local _ = log.info() and log.info(ctx.method, "No location found")
						return nil
					end

					if split_cmd then
						vim.cmd(split_cmd)
					end

					if vim.tbl_islist(result) then
						util.jump_to_location(result[1])

						if #result > 1 then
							-- util.set_qflist(util.locations_to_items(result))
							vim.fn.setqflist(util.locations_to_items(result))
							api.nvim_command("copen")
							api.nvim_command("wincmd p")
						end
					else
						util.jump_to_location(result)
					end
				end

				return handler
			end

			vim.lsp.handlers["textDocument/definition"] = goto_definition("split")
		end,
	},
}
