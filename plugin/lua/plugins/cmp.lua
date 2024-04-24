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
  Calc = "󰃬",
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
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = "calc" },
    { name = 'buffer' },
    { name = 'nvim_lua' },
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
      -- if entry.source.name == "calc" then
      --   -- Get the custom icon for 'calc' source
      --   -- Replace the kind glyph with the custom icon

      -- vim_item.kind = string.format('%s %s', kind_icons.Calc, 'Math', vim_item.kind) -- This concatenates the icons with the name of the item kind
      -- end

      -- Kind icons
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatenates the icons with the name of the item kind
      -- Source
      vim_item.menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        calc = "[Calculator]",
        spell = "[Spell]",
        latex_symbols = "[LaTeX]",
      })[entry.source.name]
      return vim_item
    end
  },
})

-- cmp.setup.cmdline(':', {
--   view = {
--     entries = { name = 'wildmenu', separator = '|' }
--   },
--   mapping = cmp.mapping.preset.cmdline(),
-- })

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

-- Completion kinds
function kind_icons.setup()
  local kinds = vim.lsp.protocol.CompletionItemKind
  for i, kind in ipairs(kinds) do
    kinds[i] = kind_icons.icons[kind] or kind
  end
end

do return kind_icons end
