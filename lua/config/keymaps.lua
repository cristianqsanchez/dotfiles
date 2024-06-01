vim.g.mapleader = " "

vim.keymap.set("n", "<leader>j", "<C-w><C-h>")
vim.keymap.set("n", "<leader>k", "<C-w><C-l>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("Telescope")
end)

vim.keymap.set("n", "<leader>f", function()
	vim.cmd("Telescope fd")
end)

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Vexplore")
end)
