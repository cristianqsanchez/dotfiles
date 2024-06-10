return {
	"folke/zen-mode.nvim",

	config = function()
		vim.keymap.set("n", "<leader>zz", function()

			local colors = require('kanagawa.colors').setup()

			require("zen-mode").toggle({
				window = {
					width = .85
				},

				plugins = {
					alacritty = { enabled = true, font = "13" }
				},

				on_open = function()
					vim.api.nvim_set_hl(0, "Normal", { bg = colors.theme.ui.bg })
					vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.theme.ui.bg })
				end,

				on_close = function()
					vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
					vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
				end
			})
		end,
			{ desc = "Toggle zen mode" })
	end
}
