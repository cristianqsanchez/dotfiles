return {
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = 'kanagawa',
				disabled_filetypes = {
					'dashboard',
					'undotree'
				}
			}
		}
	},

	{
		'nvimdev/dashboard-nvim',
		lazy = false,
		event = 'VimEnter',
		config = function()
			local logo = [[
		 ██████╗ ███████╗    ██████╗ ███████╗██╗   ██╗
		██╔═══██╗██╔════╝    ██╔══██╗██╔════╝██║   ██║
		██║   ██║███████╗    ██║  ██║█████╗  ██║   ██║
		██║▄▄ ██║╚════██║    ██║  ██║██╔══╝  ╚██╗ ██╔╝
		╚██████╔╝███████║    ██████╔╝███████╗ ╚████╔╝ 
		 ╚══▀▀═╝ ╚══════╝    ╚═════╝ ╚══════╝  ╚═══╝  
			]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"

			require('dashboard').setup {
				theme = 'doom',
				hide = {
					statusline = true
				},
				config = {
					header = vim.split(logo, "\n"),
					center = {
						{ action = "ene | startinsert", desc = 'New file', icon = ' ', key = 'n' },
						{ action = "Telescope live_grep", desc = 'Search', icon = ' ', key = 's' },
						{ action = "Telescope fd", desc = 'Search files', icon = ' ',  key = 'f' },
						{ action = "Telescope oldfiles", desc = 'Recent files', icon = ' ', key = 'r' },
						{ action = "Lazy", desc = 'Lazy', icon = '󰒲 ', key = 'l' },
						{ action = "qa", desc = 'Exit', icon = ' ', key = 'q' }
					},
					disable_move = true
				}
			}
		end,
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		}
	}
}
