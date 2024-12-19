return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			fzf_opts = {
				['--info'] = 'default',
				['--layout'] = 'reverse-list',
			},
			keymap = {
				builtin = {
					['<C-/>'] = 'toggle-help',
					['<C-a>'] = 'toggle-fullscreen',
					['<C-i>'] = 'toggle-preview',
					['<C-f>'] = 'preview-page-down',
					['<C-b>'] = 'preview-page-up',
				},
			},
			files = {
				prompt = 'Files❯ ',
			}
		}
	}
}
