vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		opts = {
			git = {
				enable = false,
			}
		},
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	}
}

