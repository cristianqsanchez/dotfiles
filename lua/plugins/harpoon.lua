return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add harpoon mark" })
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Show harpoon" })

		vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Show harpoon mark #0" })
		vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end, { desc = "Show harpoon mark #1" })
		vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end, { desc = "Show harpoon mark #2" })
		vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end, { desc = "Show harpoon mark #3" })
	end
}
