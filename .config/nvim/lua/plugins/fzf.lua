return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			"default-title",
			fzf_opts = {
				["--info"] = "default",
				["--layout"] = "reverse-list",
			},
			files = {
				fd_opts = "--type f --hidden --exclude .git --exclude .hg --exclude '*.class'",
			},
			grep = {
				rg_opts = "--hidden -g '!.git/**' -g '!.hg/**' --column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",
			},
			keymap = {
				builtin = {
					["<C-/>"] = "toggle-help",
					["<C-a>"] = "toggle-fullscreen",
					["<C-i>"] = "toggle-preview",
					["<C-f>"] = "preview-page-down",
					["<C-b>"] = "preview-page-up",
				},
			},
		},
	}
}

