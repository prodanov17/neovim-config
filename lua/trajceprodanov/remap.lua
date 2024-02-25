vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>pp', ':Prettier<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>v", ":vsplit<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set('n', '<C-a>', ':Neotree<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':normal 3j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':normal 3k<CR>', { noremap = true, silent = true })
