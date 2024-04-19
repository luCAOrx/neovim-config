-- Nvim There

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = { "help" },
  },
  sort = {
    sorter = "case_sensitive",
  },
  git = {
    enable = true,
    ignore = true,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    preserve_window_proportions = true,
  },
  renderer = {
    group_empty = true,
    full_name = true,
    special_files = {},
    symlink_destination = false,
    root_folder_label = true,
    highlight_git = true,
    highlight_opened_files = "none",
    indent_markers = {
      enable = true,
    },
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      }
    },
  },
  filters = {
    dotfiles = false,
    custom = {
      "^.git$",
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "󰌶",
      info = "",
      warning = "󰀪",
      error = "󰅚",
    },
  },
  log = {
    enable = true,
    truncate = true,
    types = {
      all = true,
      config = true,
      copy_paste = true,
      diagnostics = true,
      git = true,
      profile = true,
      watcher = true,
    },
  },
})
