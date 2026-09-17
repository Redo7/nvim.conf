vim.g.mapleader = " "

-- Disabled in favor of yazi
-- vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Toggle Neotree
vim.keymap.set("n", "<leader>b", ":Neotree filesystem reveal toggle right<CR>")

-- Join lines without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll document with cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank into system clipboard
vim.keymap.set("n", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")
vim.keymap.set("v", "Y", "\"+Y")

-- Insert current word into find/replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod+x the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Color Picker
vim.keymap.set("n", "<leader>c", "<cmd>CccPick<CR>")

-- Cmd + S -> Save/Write
vim.keymap.set("n", "<D-s>", ":w<CR>")

-- Hide search term highlight on <Esc>
vim.keymap.set("n", "<Esc>", ':noh<CR>')

-- Convert px to rem
vim.keymap.set("n", "<leader>re", ":PxToRemLine<CR>")

-- Code Action
vim.keymap.set("n", "<leader>.", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Tabs

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Switch to previous/next tab
map('n', '<leader>a', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>s', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<leader><S-a>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader><S-s>', '<Cmd>BufferMoveNext<CR>', opts)

-- Close tab
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)

-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)

-- Close buffer
map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)

-- Keep selection after indenting
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '>', '>gv', { noremap = true })

-- paste/delete register fix
vim.keymap.set('v', 'd', '"_d', { noremap = true })
vim.keymap.set('v', 'c', '"_c', { noremap = true })
vim.keymap.set('n', 'd', '"_d', { noremap = true })
vim.keymap.set('n', 'c', '"_c', { noremap = true })
