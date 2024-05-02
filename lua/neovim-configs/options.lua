local o = vim.o
local g = vim.g
local opt = vim.opt

-----------------------------  OPTIONS --------------------------
opt.filetype = "on"
opt.syntax = "on"
o.laststatus = 3
o.showmode = false
o.cmdheight = 2
o.encoding = "utf-8"
o.backup = false
o.writebackup = false
o.history = 1000
o.incsearch = true
o.showmatch = true
o.hlsearch = true
o.termguicolors = true
opt.statusline = "%{get(b:,'gitsigns_status','')}"

-----------------GLOBAL----------------
g.conceallevel = 0
g.indentLine_setConceal = 0

---------------- SONOKAI THEME ---------
g.sonokai_style = "andromeda"
g.sonokai_enable_italic = 1
g.sonokai_disable_italic_comment = 0
g.sonokai_diagnostic_line_highlight = 1
g.sonokai_current_word = "bold"
g.sonokai_spell_foreground = "colored"
----------------------------------------

--------------- ALE LINT --------------
g.ale_linters = {
	javascript = { "eslint" },
	typescript = { "eslint" },
	javascriptreact = { "eslint" },
	typescriptreact = { "eslint" },
	jsx = { "eslint" },
	tsx = { "eslint" },
}

g.ale_fixers = {
	["*"] = { "remove_trailing_lines", "trim_whitespace" },
	javascript = { "prettier", "eslint" },
	typescript = { "prettier", "eslint" },
	javascriptreact = { "prettier", "eslint" },
	typescriptreact = { "prettier", "eslint" },
	jsx = { "prettier", "eslint" },
	tsx = { "prettier", "eslint" },
}

g.ale_fix_on_save = 1
g.ale_completion_enabled = 1
---------------------------------------

-------------- MAKDOWN ----------------
g.mkdp_auto_start = 0
g.mkdp_auto_close = 1
g.mkdp_refresh_slow = 0
g.mkdp_command_for_global = 0
g.mkdp_open_to_the_world = 0
g.mkdp_open_ip = ""
g.mkdp_browser = ""
g.mkdp_echo_preview_url = 0
g.mkdp_browserfunc = ""
g.mkdp_markdown_css = ""
g.mkdp_highlight_css = ""
g.mkdp_port = ""
g.mkdp_page_title = "「${name}」"
g.mkdp_filetypes = { "markdown" }
g.mkdp_theme = "dark"
g.mkdp_combine_preview = 0
g.mkdp_combine_preview_auto_refresh = 1
g.mkdp_preview_options = {
	mkit = {},
	katex = {},
	uml = {},
	maid = {},
	disable_sync_scroll = 0,
	sync_scroll_type = "middle",
	hide_yaml_meta = 1,
	sequence_diagrams = {},
	flowchart_diagrams = {},
	content_editable = "v:false",
	disable_filename = 0,
	toc = {},
}
---------------------------------------

-------------- COLOR SCHEME ------------
-- vim.cmd("colorscheme dracula")
----------------------------------------

------------ FOLDER -------
o.foldmethod = "syntax"
o.foldlevel = 99
o.foldexpr = ""
---------------------------

-------------- CLIPBOARD ---------
o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number"
----------------------------------

---------- LINE ---------
o.colorcolumn = "100"
o.wrap = true
-------------------------

-------- NUMBERS----
o.number = true
o.numberwidth = 2
o.scrolloff = 8
o.ruler = false
--------------------

-------- INDENT-------
o.tabstop = 2
o.smarttab = true
o.softtabstop = 2
o.shiftwidth = 2
o.smartindent = true
o.expandtab = true
o.smartcase = true
o.ignorecase = true
o.mouse = "a"
o.autoindent = true
-----------------------

-------- BUFFER -------
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 100
o.hidden = true
o.undofile = true
o.autoread = true
-----------------------

---------- SWAP -------
o.updatetime = 100
o.swapfile = true
o.undofile = true
-----------------------

------------- SPELL --------------
opt.spell = true
opt.spelllang = { "en_us", "pt_br" }
----------------------------------
