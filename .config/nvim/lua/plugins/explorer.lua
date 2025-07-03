local utils = require "utils"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
return {
	{
		'stevearc/oil.nvim',
		lazy = false,
		opts = {
			delete_to_trash = true,
			watch_for_changes = false,
			view_options = {
				show_hidden = true,
			},
			win_options = {
				winbar = "%{v:lua.require('oil').get_current_dir()}",
			},
		},
		keys = {
			{ "<leader>e", utils.cmd "Oil", mode = 'n', desc = "Toggle Explorer" }
		},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	}
}
