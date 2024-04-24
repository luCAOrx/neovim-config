local wk = require("which-key")

wk.setup({
  plugins = {
    marks = true,         -- shows a list of your marks on ' and `
    registers = true,     -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true,     -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 30,   -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false,     -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true,        -- adds help for motions
      text_objects = true,   -- help for text objects triggered after entering an operator
      windows = true,        -- default bindings on <c-w>
      nav = true,            -- misc bindings to work with windows
      z = true,              -- bindings for folds, spelling and others prefixed with z
      g = true,              -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>",   -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded",       -- none, single, double, shadow
    position = "bottom",      -- bottom, top
    margin = { 1, 0, 1, 0 },  -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3,                    -- spacing between columns
    align = "left",                 -- align columns left, center or right
  },
  -- ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true,                                                             -- show help message on the command line when the popup is visible
  triggers = "auto",                                                            -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
})

wk.register({
  g = {
    name = "Git",
    s = { "<cmd>lua package.loaded.gitsigns.stage_hunk()<cr>", "Stage hunk" },
    r = { "<cmd>lua package.loaded.gitsigns.reset_hunk()<cr>", "Reset hunk" },
    sb = { "<cmd>lua package.loaded.gitsigns.stage_buffer()<cr>", "Stage buffer" },
    u = { "<cmd>lua package.loaded.gitsigns.undo_stage_hunk()<cr>", "Undo stage hunk" },
    rb = { "<cmd>lua package.loaded.gitsigns.reset_buffer()<cr>", "Reset buffer" },
    p = { "<cmd>lua package.loaded.gitsigns.preview_hunk()<cr>", "Preview hunk" },
    bp = { "<cmd>lua package.loaded.gitsigns.blame_line()<cr>", "Blame line" },
    bt = { "<cmd>lua package.loaded.gitsigns.toggle_current_line_blame()<cr>", "Toogle current line blame" },
    hn = { "<cmd>lua package.loaded.gitsigns.next_hunk()<cr>", "Next hunk" },
    hp = { "<cmd>lua package.loaded.gitsigns.prev_hunk()<cr>", "Prev hunk" },
    d = { "<cmd>lua package.loaded.gitsigns.diffthis()<cr>", "Diff" },
    td = { "<cmd>lua package.loaded.gitsigns.toggle_deleted()<cr>", "Toogle deleted" },
  },

  f = {
    name = "Search Engine",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
    w = { "<cmd>Telescope live_grep<cr>", "Find Words" },
    h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
    gs = { "<cmd>Telescope git_status<cr>", "Show Git Status" },
    gc = { "<cmd>Telescope git_commits<cr>", "Show Git Commits" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  },

  e = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },

  a = { "<cmd>MarkdownPreview<cr>", "Open markdown preview (Only in markdown files)" },

  p = {
    name = "Plug pakage Manager",
    i = { "<cmd>PlugInstall<cr>", "Insall" },
    ud = { "<cmd>PlugUpdate<cr", "Update" },
    ug = { "<cmd>PlugUpgrde<cr>", "Upgrade" },
    s = { "<cmd>Plugtatus<cr>", "Status" },
    d = { "<cmd>PlugClean<cr>", "Delete" }
  },

  t = { "<cmd>ToggleTerm<cr>", "Open terminal" },

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
    f = { "<cmd>lua vim.lsp.buf.format()()<cr>", "Format" },
    ["<C-u>"] = "Scroll docs to up",
    ["<C-d>"] = "Scroll docs to down",
    ["<C-Space>"] = "Mapping complete",
    ["<CR>"] = "Confirm choice",
    ["<Tab>"] = "Expand or jump to next",
    ["<S-Tab>"] = "Jump prev",
    ["<C-E"] = "Next choice"
  },

  b = {
    name = "Buffer",
    ["<M-up>"] = "Switch to previous",
    ["<M-down>"] = "Switch to next",
    ["<M-S-up>"] = "Move to prev",
    ["<M-S-down>"] = "Move to next",
    ["<M-t>"] = "New buffer",
    ["<M-w>"] = "Close current buffer",
    ["<M-m>"] = "Create a vertical split",
    ["<M-v>"] = "Create a horiziontal split"
  },

  u = {
    name = "Utils",
    ["op"] = { "Add Empty line Below" },
    ["oi"] = { "Add Empty line Above" },
    ["oo"] = { "Add Empty line Above in Inser Mode" },
    ["<C-S-up>"] = "Move selected multiple lines to up",
    ["<C-S-down>"] = "Move selected multiple lines to down",
    ["<C-a>"] = "Select all lines" ,
    ["za"] = { "Collapse a code block" },
    ["<C-c>"] = "Copy",
    ["<u>"] = { "Switch Word Lowercase [Visual Mode]" },
    ["<U>"] = { "Switch Word Uppercase [Visual Mode]" },
    ["<C-p>"] = "Paste",
    ["<C-x>"] = "Cut",
    ["<C-f>"] = "Search a word in current buffer",
    ["<Tab>"] = "Indent to right",
    ["<S-Tab>"] = "Indent to right",
    c = "Coment Line [Visual Mode]",
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
    ["<C-Up>"] = "Multiple Cursors Select Next Word Above"
  },

  q = { "<cmd>q<cr>", "Quit" },

}, {
  mode = "n",       -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,     -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,    -- use `silent` when creating keymaps
  noremap = true,   -- use `noremap` when creating keymaps
  nowait = true,    -- use `nowait` when creating keymaps
})
