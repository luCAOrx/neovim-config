require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  },

    ensure_installed = {
      'bashls',
      'cssls',
      'dockerls',
      'eslint',
      'html',
      'jsonls',
      'lua_ls',
      'prismals',
      'tailwindcss',
      'tsserver',
      'vimls',
      'yamlls'
    },

    automatic_installation = true,
})

require("mason-lspconfig").setup()
