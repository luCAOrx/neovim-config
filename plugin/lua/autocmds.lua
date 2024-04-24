local highlight_word_under_cursor = function()
	if vim.fn.matchstr(vim.fn.getline("."), "\\%" .. vim.fn.col(".") .. "c.") ~= "[[:punct:][:blank:]]" then
		vim.api.nvim_command("match Search /\\<" .. vim.fn.expand("<cword>") .. "\\>/")
	else
		vim.api.nvim_command("match none")
	end
end

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    highlight_word_under_cursor()

    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor'
    }
    vim.diagnostic.open_float(nil, opts)
  end
})


vim.api.nvim_create_autocmd("VimLeave", {
	callback = function()
		vim.cmd("mksession! ./Session.vim")
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
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
