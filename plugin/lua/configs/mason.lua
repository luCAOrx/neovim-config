require("mason").setup({
  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " ",
    }
  },

    ensure_installed = {
      "bashls",
      "cspell",
      "cssls",
      "dockerls",
      "emmet_language_server",
      "eslint",
      "html",
      "jsonls",
      "jsonlint",
      "lua_ls",
      "prettier",
      "prismals",
      "stylua",
      "tailwindcss",
      "tsserver",
      "vimls",
      "yamlls",
      "yamlfmt"
    },

    automatic_installation = true,
})

require("mason-lspconfig").setup()
