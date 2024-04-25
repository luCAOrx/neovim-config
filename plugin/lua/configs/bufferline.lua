vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    separator_style = 'slant',
    diagnostics = "nvim_lsp",
    numbers = 'ordinal'
  },
}
