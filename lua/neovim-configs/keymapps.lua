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
	{ "<leader>g", group = "Git" },
	{ "<leader>grh", "<cmd>lua package.loaded.gitsigns.reset_hunk()<cr>", desc = "Reset hunk" },
	{ "<leader>gsb", "<cmd>lua package.loaded.gitsigns.stage_buffer()<cr>", desc = "Stage buffer" },
	{ "<leader>gu", "<cmd>lua package.loaded.gitsigns.undo_stage_hunk()<cr>", desc = "Undo stage hunk" },
	{ "<leader>grb", "<cmd>lua package.loaded.gitsigns.reset_buffer()<cr>", desc = "Reset buffer" },
	{ "<leader>gp", "<cmd>lua package.loaded.gitsigns.preview_hunk()<cr>", desc = "Preview hunk" },
	{ "<leader>gbp", "<cmd>lua package.loaded.gitsigns.blame_line()<cr>", desc = "Blame line" },
	{
		"<leader>gbt",
		"<cmd>lua package.loaded.gitsigns.toggle_current_line_blame()<cr>",
		desc = "Toogle current line blame",
	},
	{ "<leader>ghn", "<cmd>lua package.loaded.gitsigns.next_hunk()<cr>", desc = "Next hunk" },
	{ "<leader>ghp", "<cmd>lua package.loaded.gitsigns.prev_hunk()<cr>", desc = "Prev hunk" },
	{ "<leader>gd", "<cmd>lua package.loaded.gitsigns.diffthis()<cr>", desc = "Diff" },
	{ "<leader>gtd", "<cmd>lua package.loaded.gitsigns.toggle_deleted()<cr>", desc = "Toogle deleted" },
	{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Show Git Status" },
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Show Git Commits" },
	{ "<leader>gbb", "<cmd>Telescope git_branches<cr>", desc = "Branchs" },
	{ "<leader>gS", "<cmd>Telescope git_stash<cr>", desc = "Stash" },

	{ "<leader>f", group = "Search Engine" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
	{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Words" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
	{ "<leader>ft", "<cmd>Telescope colorscheme<cr>", desc = "Open Colorschemes" },
	{ "<leader>fs", "<cmd>Telescope spell_suggest<cr>", desc = "Open Spell Suggest" },
	{ "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Open Commands" },

	{ "<leader>p", group = "Plugin Manager" },
	{ "<leader>po", "<cmd>Lazy<cr>", desc = "Open" },
	{ "<leader>pi", "<cmd>Lazy install<cr>", desc = "Insall" },
	{ "<leader>pu", "<cmd>Lazy update<cr>", desc = "Update" },
	{ "<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync" },
	{ "<leader>px", "<cmd>Lazy clean<cr>", desc = "Clean" },
	{ "<leader>pc", "<cmd>Lazy check<cr>", desc = "Check" },
	{ "<leader>pl", "<cmd>Lazy log<cr>", desc = "Log" },
	{ "<leader>pr", "<cmd>Lazy restore<cr>", desc = "Restore" },
	{ "<leader>pp", "<cmd>Lazy profile<cr>", desc = "Profile" },
	{ "<leader>pd", "<cmd>Lazy debug<cr>", desc = "Debug" },
	{ "<leader>ph", "<cmd>Lazy help<cr>", desc = "Help" },

	{ "<leader>m", group = "Mason LSP package manager" },
	{ "<leader>mo", "<cmd>Mason<cr>", desc = "Open" },
	{ "<leader>mi", "<cmd>MasonInstall<cr>", desc = "Install" },
	{ "<leader>mu", "<cmd>MasonUpdate<cr>", desc = "Update" },
	{ "<leader>ml", "<cmd>MasonLog<cr>", desc = "Log" },
	{ "<leader>md", "<cmd>MasonUninstall<cr>", desc = "Uninstall" },
	{ "<leader>mda", "<cmd>MasonUninstallAll<cr>", desc = "Uninstall All" },

	{ "<leader>l", group = "LSP hotkeys" },
	{ "<leader>ldf", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Diagnostic open float" },
	{ "<leader>ldp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Diagnostic previou" },
	{ "<leader>ldn", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Diagnostic next" },
	{ "<leader>lds", "<cmd>lua vim.diagnostic.setloclist()<cr>", desc = "Diagnostic set local list" },
	{ "<leader>lgc", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Declaration" },
	{ "<leader>lgd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Definition" },
	{ "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover" },
	{ "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Implementation" },
	{ "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature" },
	{ "<leader>lwa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", desc = "Add workspace folder" },
	{ "<leader>lwr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", desc = "Remove workspace folder" },
	{ "<leader>lwl", "<cmd>lua vim.lsp.buf.list_workspace_folders()()<cr>", desc = "List workspace folders" },
	{ "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "Type definition" },
	{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code action" },
	{ "<leader>lgr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "References" },
	{ "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format" },
	{ "<leader>lsu", desc = "Scroll docs to up" },
	{ "<leader>lsd", desc = "Scroll docs to down" },
	{ "<leader>lm", desc = "Mapping complete" },
	{ "<leader>lc", desc = "Confirm choice" },
	{ "<leader>lj", desc = "Expand or jump to next" },
	{ "<leader>ljp", desc = "Jump prev" },
	{ "<leader>ljn", desc = "Next choice" },

	{ "<leader>b", group = "Buffer" },
	{ "<leader>bp", "<cmd>:bp<CR>", desc = "Switch to previous" },
	{ "<leader>bn", "<cmd>:bn<CR>", desc = "Switch to next" },
	{ "<leader>bmp", "<cmd>BufferLineMovePrev<CR>", desc = "Move to prev" },
	{ "<leader>bmn", "<cmd>BufferLineMoveNext<CR>", desc = "Move to next" },
	{ "<leader>bnb", "<cmd>enew<CR>", desc = "New buffer" },
	{ "<leader>bc", "<cmd>:bd<CR>", desc = "Close current buffer" },
	{ "<leader>bsv", "<cmd>:vsplit<CR>", desc = "Create a vertical split" },
	{ "<leader>bsh", "<cmd>:split<CR>", desc = "Create a horiziontal split" },

	{ "<leader>u", group = "Utils" },
	{ "<leader>ulb", desc = "Use [<op>] To Add Empty line Below" },
	{ "<leader>ula", desc = "Use [<oi>] To Add Empty line Above" },
	{ "<leader>uli", desc = "Use [<oo>] To Add Empty line Above in Insert Mode" },
	{ "<leader>ulu", "<cmd><Esc>:m .-2<CR>==gi<CR>", desc = "Move selected multiple lines to up", mode = "v" },
	{ "<leader>uld", "<cmd><Esc>:m .+1<CR>==gi<CR>", desc = "Move selected multiple lines to down", mode = "v" },
	{ "<leader>uls", "<cmd><Esc>ggVG<CR>", desc = "Select all lines" },
	{ "<leader>ucb", "<cmd><Esc>za<CR>", desc = "Collapse a code block" },
	{ "<leader>uwl", "<cmd><Esc>u<CR>", desc = "Switch Word Lowercase", mode = "v" },
	{ "<leader>uwu", "<cmd><Esc>U<CR>", desc = "Switch Word Uppercase", mode = "v" },
	{ "<leader>uy", "<cmd><Esc>y<Insert><CR>", desc = "Copy" },
	{ "<leader>up", "<cmd><Esc>p<Insert><CR>", desc = "Paste" },
	{ "<leader>ux", "<cmd><Esc>x<Insert><CR>", desc = "Cut" },
	{ "<leader>uf", "<cmd><Esc>/<CR>", desc = "Search a word in current buffer" },
	{ "<leader>uir", "<cmd><Esc>>><Insert><CR>", desc = "Indent to right" },
	{ "<leader>uil", "<cmd><Esc><<<Insert><CR>", desc = "Indent to left" },
	{ "<leader>ucl", "<cmd><Plug>(comment_toggle_linewise_visual)<CR>", desc = "Coment Line" },
	{ "<leader>uof", "<cmd>:e<space><CR>", desc = "Open a file" },
	{ "<leader>usa", "<cmd><Esc>:w<Space><CR>", desc = "Save file as" },
	{ "<leader>usf", "<cmd><Esc>:w<CR><CR>", desc = "Save file" },
	{ "<leader>ucr", "<cmd>redo<CR>", desc = "Redo changes" },
	{ "<leader>ucu", "<cmd>u<CR>", desc = "Undo changes" },
	{ "<leader>ubr", "<cmd>:bn<CR>", desc = "Navigate between buffers to right" },
	{ "<leader>ubl", "<cmd>:bp<CR>", desc = "Navigate between buffers to left" },
	{ "<leader>ubu", "<cmd>BufferLineMovePrev<CR>", desc = "Move buffers to right" },
	{ "<leader>ubd", "<cmd>BufferLineMoveNext<CR>", desc = "Move buffers to left" },
	{ "<leader>ubsu", desc = "Use [<C-j>] To Switch Window Up" },
	{ "<leader>ubsd", desc = "Use [<C-k>] To Switch Window Down" },
	{ "<leader>ubsl", desc = "Use [<C-h>] To Switch Window Left" },
	{ "<leader>ubsr", desc = "Use [<C-l>] To Switch Window Right" },
	{ "<leader>umn", desc = "Use [<C-n>] To Multiple Cursors Select Next Word", mode = "v" },
	{ "<leader>umb", desc = "Use [<C-up>] To Multiple Cursors Select Create Cursors Bellow" },
	{ "<leader>uma", desc = "Use [<C-down>] To Multiple Cursors Select Create Cursors Above" },

	{ "<leader>e", "<cmd>q<cr>", desc = "Exit" },
}
