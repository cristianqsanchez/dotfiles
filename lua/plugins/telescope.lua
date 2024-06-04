return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = {
		'nvim-lua/plenary.nvim'
	},
	config = function()
		vim.keymap.set("n", "<leader><leader>", function()
			vim.cmd("Telescope")
		end)

		vim.keymap.set("n", "<leader>f", function()
			vim.cmd("Telescope fd")
		end)

		vim.keymap.set("n", "<leader>s", function()
			vim.cmd("Telescope live_grep")	
		end)
	end
}
