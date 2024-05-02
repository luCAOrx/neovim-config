local map = vim.keymap.set

----------------------------- LUA SNIP -----------------------
map("i", "<Tab>", '<Cmd>lua require("luasnip").expand_or_jump()<CR>', {
	desc = "Expand or Jump",
})
map("s", "<Tab>", '<Cmd>lua require("luasnip").jump(1)<CR>', {
	desc = "Jump Next",
})
map({ "i", "s" }, "<S-Tab>", '<Cmd>lua require("luasnip").jump(-1)<CR>', {
	desc = "Jump Previous",
})
--------------------------------------------------------------

----------------------------- TERMINAL -----------------------
map({ "n", "t" }, "<C-t>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", {
	desc = "Toggle terminal",
})
--------------------------------------------------------------

----------------------------- COMMENT ------------------------
map("v", "<M-/>", "<Plug>(comment_toggle_linewise_visual)", {
	desc = "Toggle comment",
})
--------------------------------------------------------------

----------------------------- WINDOW -------------------------
map("n", "<C-h>", "<C-w>h", {
	desc = "Switch Window Left",
})

map("n", "<C-l>", "<C-w>l", {
	desc = "Switch Window Right",
})

map("n", "<C-j>", "<C-w>j", {
	desc = "Switch Window Up",
})

map("n", "<C-k>", "<C-w>k", {
	desc = "Switch Window Down",
})
---------------------------------------------------------------

------------------------------- BUFFER --------------------------
map("n", "<M-n>", "<cmd>enew<CR>", {
	desc = "New Buffer",
})

map("n", "<M-w>", "<cmd>:bd<CR>", {
	silent = true,
	desc = "Close Buffer",
})

map("n", "<M-up>", "<cmd>:bp<CR>", {

	silent = true,
	desc = "Switch Buffer to left",
})

map("n", "<M-down>", "<cmd>:bn<CR>", {
	silent = true,
	desc = "Switch Buffer to right",
})

map("n", "<M-S-up>", "<cmd>BufferLineMoveNext<CR>", {
	desc = "Move Buffer to left",
})

map("n", "<M-S-down>", "<cmd>BufferLineMovePrev<CR>", {
	desc = "Move Buffer to right",
})

map("n", "<M-h>", ":split<CR>", {
	silent = true,
	desc = "Create Horizontal Split",
})

map("n", "<M-v>", ":vsplit<CR>", {
	silent = true,
	desc = "Create Vertical Split",
})

map("i", "<C-z>", "<cmd>u<CR>", {
	desc = "Undo changes",
})

map("i", "<C-y>", "<cmd>redo<CR>", {
	desc = "Reundo changes",
})

map({ "n", "i" }, "<C-s>", "<Esc>:w<CR>", {
	desc = "Save file",
})

map("i", "<C-S-s>", "<Esc>:w<Space>", {
	silent = true,
	desc = "Save file as",
})

map("n", "<C-o>", ":e<space>", {
	desc = "Open file",
})

map("n", "<Esc>", "<cmd>noh<CR>", {
	desc = "General Clear highlights",
})

map("v", "<M-S-u>", "U", {
	desc = "Switch Word Uppercase",
})

map("v", "<M-u>", "u", {
	desc = "Switch Word Lowercase",
})

map("v", "<Tab>", ">v", {
	desc = "Tab Right",
})

map("i", "<Tab>", "<Esc>>><Insert>", {
	desc = "Tab Right",
})

map("v", "<S-Tab>", "<v", {
	desc = "Tab Left",
})

map("i", "<S-Tab>", "<Esc><<<Insert>", {
	desc = "Tab Left",
})

map({ "n", "i" }, "<C-f>", "<Esc>/", {
	desc = "Search Words In Buffer",
})

map("v", "<C-x>", "x", {
	desc = "Cut",
})

map("i", "<C-x>", "<Esc>x<Insert>", {
	desc = "Cut",
})

map({ "n", "v" }, "<C-c>", "y<Esc>", {
	desc = "Copy",
})

map("i", "<C-c>", "<Esc>y<Insert>", {
	desc = "Copy",
})

map("i", "<C-v>", "<Esc>p<Insert>", {
	desc = "Paste",
})

map("v", "<C-a>", "<Esc>ggVG", {
	desc = "Select All",
})

map("i", "<C-S-Up>", "<Esc>:m .-2<CR>==gi", {
	silent = true,
	desc = "Move Line or Lines to up",
})

map("i", "<C-S-Down>", "<Esc>:m .+1<CR>==gi", {
	silent = true,
	desc = "Move Line or Lines to Down",
})

map("v", "<C-S-Up>", ":m '<-2<CR>gv=gv", {
	silent = true,
	desc = "Move Line or Lines to up",
})

map("v", "<C-S-Down>", ":m '>+1<CR>gv=gv", {
	silent = true,
	desc = "Move Line or Lines to Down",
})

map("n", "op", "o<Esc>k", {
	desc = "Add Empty line Below",
})

map("n", "oi", "O<Esc>j", {
	desc = "Add Empty line Above",
})

map("n", "oo", "A<CR>", {
	desc = "Add Empty line Above In Insert Mode",
})

map("n", "<C-q>", ":quit<CR>", {
	silent = true,
	desc = "Exit",
})

map("n", "<M-m>", "<cmd>MarkdownPreview<CR>", {
	desc = "Opem Markdown Preview",
})

map("n", "<M-b>", "<cmd>NvimTreeToggle<CR>", {
	desc = "Open File Explorer",
})
----------------------------------------------------------------

return {
	g = {
		name = "Git",
		s = { "<cmd>lua package.loaded.gitsigns.stage_hunk()<cr>", "Stage hunk" },
		r = { "<cmd>lua package.loaded.gitsigns.reset_hunk()<cr>", "Reset hunk" },
		sb = { "<cmd>lua package.loaded.gitsigns.stage_buffer()<cr>", "Stage buffer" },
		u = { "<cmd>lua package.loaded.gitsigns.undo_stage_hunk()<cr>", "Undo stage hunk" },
		rb = { "<cmd>lua package.loaded.gitsigns.reset_buffer()<cr>", "Reset buffer" },
		p = { "<cmd>lua package.loaded.gitsigns.preview_hunk()<cr>", "Preview hunk" },
		bp = { "<cmd>lua package.loaded.gitsigns.blame_line()<cr>", "Blame line" },
		bt = {
			"<cmd>lua package.loaded.gitsigns.toggle_current_line_blame()<cr>",
			"Toogle current line blame",
		},
		hn = { "<cmd>lua package.loaded.gitsigns.next_hunk()<cr>", "Next hunk" },
		hp = { "<cmd>lua package.loaded.gitsigns.prev_hunk()<cr>", "Prev hunk" },
		d = { "<cmd>lua package.loaded.gitsigns.diffthis()<cr>", "Diff" },
		td = { "<cmd>lua package.loaded.gitsigns.toggle_deleted()<cr>", "Toogle deleted" },
		gs = { "<cmd>Telescope git_status<cr>", "Show Git Status" },
		gc = { "<cmd>Telescope git_commits<cr>", "Show Git Commits" },
		bb = { "<cmd>Telescope git_branches<cr>", "Branchs" },
		S = { "<cmd>Telescope git_stash<cr>", "Stash" },
	},

	f = {
		name = "Search Engine",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
		w = { "<cmd>Telescope live_grep<cr>", "Find Words" },
		h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
		t = { "<cmd>Telescope colorscheme<cr>", "Open Colorschemes" },
		s = { "<cmd>Telescope spell_suggest<cr>", "Open Spell Suggest" },
		c = { "<cmd>Telescope commands<cr>", "Open Commands" },
	},

	p = {
		name = "Plugin Manager",
		o = { "<cmd>Lazy<cr>", "Open" },
		i = { "<cmd>Lazy install<cr>", "Insall" },
		u = { "<cmd>Lazy update<cr>", "Update" },
		s = { "<cmd>Lazy sync<cr>", "Sync" },
		x = { "<cmd>Lazy clean<cr>", "Clean" },
		c = { "<cmd>Lazy check<cr>", "Check" },
		l = { "<cmd>Lazy log<cr>", "Log" },
		r = { "<cmd>Lazy restore<cr>", "Restore" },
		p = { "<cmd>Lazy profile<cr>", "Profile" },
		d = { "<cmd>Lazy debug<cr>", "Debug" },
		h = { "<cmd>Lazy help<cr>", "Help" },
	},

	m = {
		name = "Mason LSP package manager",
		o = { "<cmd>Mason<cr>", "Open" },
		i = { "<cmd>MasonInstall<cr>", "Install" },
		u = { "<cmd>MasonUpdate<cr>", "Update" },
		l = { "<cmd>MasonLog<cr>", "Log" },
		d = { "<cmd>MasonUninstall<cr>", "Uninstall" },
		da = { "<cmd>MasonUninstallAll<cr>", "Uninstall All" },
	},

	l = {
		name = "LSP hotkeys",
		df = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Diagnostic open float" },
		dp = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Diagnostic previou" },
		dn = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Diagnostic next" },
		ds = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Diagnostic set local list" },
		gc = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
		gd = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
		h = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
		s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature" },
		wa = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add workspace folder" },
		wr = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove workspace folder" },
		wl = { "<cmd>lua vim.lsp.buf.list_workspace_folders()()<cr>", "List workspace folders" },
		t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type definition" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action" },
		gr = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
		["<C-u>"] = "Scroll docs to up",
		["<C-d>"] = "Scroll docs to down",
		["<C-Space>"] = "Mapping complete",
		["<CR>"] = "Confirm choice",
		["<Tab>"] = "Expand or jump to next",
		["<S-Tab>"] = "Jump prev",
		["<C-E"] = "Next choice",
	},

	b = {
		name = "Buffer",
		["<M-up>"] = "Switch to previous",
		["<M-down>"] = "Switch to next",
		["<M-S-up>"] = "Move to prev",
		["<M-S-down>"] = "Move to next",
		["<M-n>"] = "New buffer",
		["<M-w>"] = "Close current buffer",
		["<M-v>"] = "Create a vertical split",
		["<M-h>"] = "Create a horiziontal split",
	},

	u = {
		name = "Utils",
		["op"] = { "Add Empty line Below" },
		["oi"] = { "Add Empty line Above" },
		["oo"] = { "Add Empty line Above in Inser Mode" },
		["<C-S-up>"] = "Move selected multiple lines to up",
		["<C-S-down>"] = "Move selected multiple lines to down",
		["<C-a>"] = "Select all lines",
		["za"] = { "Collapse a code block" },
		["<C-c>"] = "Copy",
		["<u>"] = { "Switch Word Lowercase [Visual Mode]" },
		["<U>"] = { "Switch Word Uppercase [Visual Mode]" },
		["<C-p>"] = "Paste",
		["<C-x>"] = "Cut",
		["<C-f>"] = "Search a word in current buffer",
		["<Tab>"] = "Indent to right",
		["<S-Tab>"] = "Indent to right",
		["<M-/>"] = "Coment Line [Visual Mode]",
		["<C-o>"] = "Open a file",
		["<C-S-s>"] = "Save file as",
		["<C-s>"] = "Save file",
		["<C-y>"] = "Redo changes",
		["<C-z>"] = "Undo changes",
		["<C-h>"] = "Navigate between buffers to right",
		["<C-l>"] = "Navigate between buffers to left",
		["<C-k>"] = "Navigate between buffers to up",
		["<C-j>"] = "Navigate between buffers to down",
		["<C-d>"] = "Find word or subword under",
		["<C-n>"] = "Multiple Cursors Select Next Word",
		["<C-Down>"] = "Multiple Cursors Select Next Word Bellow",
		["<C-Up>"] = "Multiple Cursors Select Next Word Above",
	},

	q = { "<cmd>q<cr>", "Exit" },
}
