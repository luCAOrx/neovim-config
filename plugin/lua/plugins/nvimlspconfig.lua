require("neodev").setup({})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')

local servers = {
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
}

for _, server in ipairs(servers) do
  if server == 'lua_ls' then
    lspconfig[server].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          },
          diagnostics = {
            globals = { "vim" },
          },
        }
      }
    })
  else
    lspconfig[server].setup {
      -- on_attach = my_custom_on_attach,
      capabilities = capabilities,
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
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
    }
  end
end

-- luasnip setup
local luasnip = require 'luasnip'

local kind_icons = {
  Text = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰇽",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰅲",
  calc = "󰃬",
}

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
    ['<C-d>'] = cmp.mapping.scroll_docs(4),  -- Down
    -- C-b (back) C-f (forward) for snippet placeholder navigation.
    ['<C-Space>'] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  performance = {
    debounce = 60,
    throttle = 30,
    fetching_timeout = 500,
    confirm_resolve_timeout = 80,
    async_budget = 1,
    max_view_entries = 500,
  },
  completion = {
    completeopt = "menu,menuone",
  },
  sources = {
    { name = 'nvim' },
    { name = 'luasnip' },
    { name = "calc" },
    { name = 'buffer' },
    { name = 'path' },
    {
      name = 'spell',
      option = {
        keep_all_entries = true,
        enable_in_context = function()
          return true
        end,
      },
    },
  },
  window = {
    completion = cmp.config.window.bordered({
      border = border "CmpDocBorder",
      winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
      side_padding = 1,
      scrollbar = false,
    }),
    documentation = cmp.config.window.bordered({
      border = border "CmpDocBorder",
      winhighlight = "Normal:CmpDoc",
    }),
  },
  formatting = {
    expandable_indicator = true,
    fields = { 'abbr', 'kind', 'menu' },
    format = function(entry, vim_item)
      if entry.source.name == "calc" then
        -- Get the custom icon for 'calc' source
        -- Replace the kind glyph with the custom icon
        vim_item.kind = kind_icons.calc
      end

      -- Kind icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatenates the icons with the name of the item kind
      -- Source
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        calc = "[Calc]",
        latex_symbols = "[LaTeX]",
      })[entry.source.name]
      return vim_item
    end
  },
})

vim.opt.spell = true
vim.opt.spelllang = { 'en_us', 'pt_br' }

cmp.setup.cmdline('/', {
  view = {
    entries = { name = 'wildmenu', separator = '|' }
  },
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

lspconfig.bashls.setup {}

lspconfig.cssls.setup {
  capabilities = capabilities,
}

lspconfig.dockerls.setup {}

lspconfig.emmet_language_server.setup {}

lspconfig.eslint.setup({})

lspconfig.html.setup {
  capabilities = capabilities,
}

lspconfig.jsonls.setup {
  capabilities = capabilities,
}

lspconfig.lua_ls.setup {}

lspconfig.prismals.setup {}

lspconfig.tailwindcss.setup {}

lspconfig.tsserver.setup {
  capabilities = capabilities,
}

lspconfig.vimls.setup {}

lspconfig.yamlls.setup {}

-- Customizing how diagnostics are displayed
vim.diagnostic.config({
  -- Change prefix/character preceding the diagnostics' virtual text
  virtual_text = {
    prefix = '●', -- Could be '●', '▎', 'x'
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

-- Completion kinds
function kind_icons.setup()
  local kinds = vim.lsp.protocol.CompletionItemKind
  for i, kind in ipairs(kinds) do
    kinds[i] = kind_icons.icons[kind] or kind
  end
end

do return kind_icons end

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
  opts = opts or { ['lnum'] = line_nr }

  local line_diagnostics = vim.diagnostic.get(bufnr, opts)
  if vim.tbl_isempty(line_diagnostics) then return end

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

vim.lsp.handlers["textDocument/definition"] = goto_definition('split')
