local map = vim.keymap.set

----------------------------- LUA SNIP -----------------------
map('i', '<Tab>', '<Cmd>lua require("luasnip").expand_or_jump()<CR>', {silent = true, expr = true})
map('i', '<S-Tab>', '<Cmd>lua require("luasnip").jump(-1)<CR>', {silent = true})
map('s', '<Tab>', '<Cmd>lua require("luasnip").jump(1)<CR>', {silent = true})
map('s', '<S-Tab>', '<Cmd>lua require("luasnip").jump(-1)<CR>', {silent = true})
map('i', '<C-E>', '<Cmd>lua require("luasnip").choice_active() and "<Plug>luasnip-next-choice" or "<C-E>"<CR>', {silent = true, expr = true})
map('s', '<C-E>', '<Cmd>lua require("luasnip").choice_active() and "<Plug>luasnip-next-choice" or "<C-E>"<CR>', {silent = true, expr = true})
--------------------------------------------------------------

----------------------------- TERMINAL -----------------------
map('n', '<C-t>', "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", {
  desc = 'Open toggle terminal'
})

map('t', '<C-t>', "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", {
  desc = 'Close toggle terminal'
})
--------------------------------------------------------------

------------------------ WINDOW ------------------
map('n', '<C-h>', '<C-w>h', {
  desc = 'Switch Window Left'
})

map('n', '<C-l>', '<C-w>l', {
  desc = 'Switch Window Right'
})

map('n', '<C-j>', '<C-w>j', {
  desc = 'Switch Window Up'
})

map('n', '<C-k>', '<C-w>k', {
  desc = 'Switch Window Down'
})
---------------------------------------------------

------------------------------- BUFFER --------------------------
map('n', '<C-n>', '<cmd>enew<CR>', { desc = 'New Buffer' })

map('n', '<M-w>', ':bd<CR>', {
  noremap = true,
  silent = true,
  desc = 'Close Buffer'
})

map('n', '<M-Up>', ':bp<CR>', {
  noremap = true,
  silent = true,
  desc = 'Switch Buffer to left'
})

map('n', '<M-Down>', ':bn<CR>', {
  noremap = true,
  silent = true,
  desc = 'Switch Buffer to right'
})

map('n', '<M-S-Up>', '<Cmd>BufferLineMoveNext<CR>', {
  desc = 'Move Buffer to left'
})

map('n', '<M-S-Down>', '<Cmd>BufferLineMovePrev<CR>', {
  desc = 'Move Buffer to right'
})

map('n', '<M-h>', ':split<CR>', {
  noremap = true,
  silent = true,
  desc = 'Create Horizontal Split'
})

map('n', '<M-h>', ':vsplit<CR>', {
  noremap = true,
  silent = true,
  desc = 'Create Vertical Split'
})

map('i', '<C-z>', '<Cmd>u<CR>', {
  desc = 'Undo changes'
})

map('i', '<C-y>', '<Cmd>redo<CR>', {
  desc = 'Reundo changes'
})

map('i', '<C-s>', '<Esc>:w!<CR>', {
  noremap = true,
  silent = true,
  desc = 'Save file'
})

map('i', '<C-S-s>', '<Esc>:w!<Space>', {
  noremap = true,
  silent = true,
  desc = 'Save file as'
})

map('n', '<C-o>', ':e<space>', {
  noremap = true,
  silent = true,
  desc = 'Open file'
})

map('n', '<Esc>', '<cmd>noh<CR>', {
  desc = 'General Clear highlights'
})

map('v', '<M-S-u>', 'U', {
  desc = 'Switch Word Uppercase'
})

map('v', '<M-u>', 'u', {
  desc = 'Switch Word Lowercase'
})

map('v', '<Tab>', '>v', {
  desc = 'Tab Right'
})

map('i', '<Tab>', '<Esc>>><Insert>', {
  desc = 'Tab Right'
})

map('v', '<S-Tab>', '<v', {
  desc = 'Tab Left'
})

map('i', '<S-Tab>', '<Esc><<<Insert>', {
  desc = 'Tab Left'
})

map('n', '<M-f>', '/', {
  desc = 'Search Words In Buffer'
})

map('i', '<M-f>', '<Esc>/', {
  desc = 'Search Words In Buffer'
})

map('v', '<M-x>', 'c<End>', {
  desc = 'Cut'
})

map('i', '<M-x>', '<Esc>c<End><Insert>', {
  desc = 'Cut'
})

map('n', '<C-c>', 'yy', {
  desc = 'Copy'
})

map('v', '<C-c>', '<Esc>yy', {
  desc = 'Copy'
})

map('i', '<C-c>', '<Esc>yy<CR><Insert>', {
  desc = 'Copy'
})

map('i', '<C-v>', '<Esc>p<Insert>', {
  desc = 'Paste'
})

map('v', '<C-a>', '<Esc>ggVG', {
  desc = 'Select All'
})

map('i', '<C-S-Up>', '<Esc>:m .-2<CR>==gi', {
  silent = true,
  desc = 'Move Line or Lines to up'
})

map('i', '<C-S-Down>', '<Esc>:m .+1<CR>==gi', {
  silent = true,
  desc = 'Move Line or Lines to Down'
})

map('v', '<C-S-Up>', ":m '<-2<CR>gv=gv", {
  silent = true,
  desc = 'Move Line or Lines to up'
})

map('v', '<C-S-Down>', ":m '>+1<CR>gv=gv", {
  silent = true,
  desc = 'Move Line or Lines to Down'
})

map('n', 'op', 'o<Esc>k', {
  desc = 'Add Empty line Below'
})

map('n', 'oi', 'O<Esc>j', {
  desc = 'Add Empty line Above'
})

map('n', 'oo', 'A<CR>', {
  desc = 'Add Empty line Above In Insert Mode'
})
----------------------------------------------------------------

map('n', '<M-q>', ':quit<CR>', {
  noremap = true,
  silent = true,
  desc = 'Quit'
})

map('n', '<M-m>', '<Cmd>MarkdownPreview<CR>', {
  desc = 'Opem Markdown Preview'
})

map('n', '<M-b>', '<Cmd>NvimTreeToggle<CR>', {
  desc = 'Open File Explorer'
})
