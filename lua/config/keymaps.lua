require('plugins.oil')

vim.g.mapleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("x", "<leader>p", [["_dP]])

 vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
 vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
 vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
 vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>ca', '<cmd>%bd|e#<CR>', { desc = 'Close all buffers' })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '%', '%zz')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace coincidences" })
