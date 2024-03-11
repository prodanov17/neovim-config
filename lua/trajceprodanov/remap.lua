vim.g.mapleader = " "

local keymap = vim.keymap

vim.api.nvim_set_keymap('n', '<leader>pp', ':Prettier<CR>', { noremap = true, silent = true })
keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>y", "\"+y")


keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk", noremap = true, silent = true })

keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
keymap.set('n', '<C-a>', ':Neotree<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-j>', ':normal 3j<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-k>', ':normal 3k<CR>', { noremap = true, silent = true })
keymap.set('n', '<tab>', ':bnext<CR>', { noremap = true, silent = true })
keymap.set('n', '<S-tab>', ':bprev<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>q', ':bd<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-W>.', '<C-W>30>', { noremap = true, silent = true })
keymap.set('n', '<C-W>,', '<C-W>30<', { noremap = true, silent = true })
keymap.set('n', '<C-W>-', '<C-W>10-', { noremap = true, silent = true })
keymap.set('n', '<C-W>=', '<C-W>10+', { noremap = true, silent = true })


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
