-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		opts = {},
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	}
}
