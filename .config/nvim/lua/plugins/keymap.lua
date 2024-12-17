local hardmode = true

if hardmode then
	vim.keymap.set("n", "<Up>", "<Nop>")
	vim.keymap.set("n", "<Down>", "<Nop>")
	vim.keymap.set("n", "<Left>", "<Nop>")
	vim.keymap.set("n", "<Right>", "<Nop>")

	vim.keymap.set("v", "<Up>", "<Nop>")
	vim.keymap.set("v", "<Down>", "<Nop>")
	vim.keymap.set("v", "<Left>", "<Nop>")
	vim.keymap.set("v", "<Right>", "<Nop>")

	vim.keymap.set('i', '<Up>', '<Nop>')
	vim.keymap.set('i', '<Down>', '<Nop>')
	vim.keymap.set('i', '<Left>', '<Nop>')
	vim.keymap.set('i', '<Right>', '<Nop>')
end

-- vim.api.nvim_create_autocmd("InsertLeave", {
--     pattern = "*",
--     command = "silent! write",
-- })
--

return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		keys = {
			{ "<leader>f", group = "file" },
			{ mode = "n", "<leader> ", "<cmd>lua require('fzf-lua').files({ prompt='>', fzf_opts = {['--layout'] = 'reverse-list'} })<cr>", desc = "Find Files" },
			{ mode = "n", "<leader>sg", "<cmd>lua require('fzf-lua').live_grep()<cr>", desc = "Find Files" },
			{ mode = "n", "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" },


		}
	}
}
