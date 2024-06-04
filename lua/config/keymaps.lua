require('plugins.oil')

vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<leader>j", "<C-w><C-h>")
vim.keymap.set("n", "<leader>k", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- TIP: Disable arrow keys in normal mode
 vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
 vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
 vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
 vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
