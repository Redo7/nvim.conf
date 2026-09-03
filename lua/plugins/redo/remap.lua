vim.g.mapleader = " "
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Disabled in favor of yazi
-- vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>b", ":Neotree filesystem reveal toggle right<CR>")

vim.keymap.set("n", "<leader>ts", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("v", "Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>c", "<cmd>CccPick<CR>")
vim.keymap.set("n", "<D-s>", ":w<CR>")

-- Tabs

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>a', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>s', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<leader><S-a>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader><S-s>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<S-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<S-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<S-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<S-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<S-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<S-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<S-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<S-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<S-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<S-0>', '<Cmd>BufferLast<CR>', opts)

-- Close buffer
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)
