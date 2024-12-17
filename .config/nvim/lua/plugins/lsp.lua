return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
					ensure_installed = {
						-- "astro",		-- npm un -g @astrojs/language-server
						-- "bashls",		-- npm un -g bash-language-server
						-- "cssls",		-- npm un -g vscode-langservers-extracted
						-- "tailwindcss",		-- npm un -g @tailwindcss/language-server
						-- "dockerls",		-- npm un -g dockerfile-language-server-nodejs
						-- "gopls",		-- rm $HOME/go/bin/gopls
						-- "html",			-- npm un -g vscode-langservers-extracted
						-- "biome",		-- npm un -g @biomejs/biome
						-- "eslint",		-- npm un -g vscode-langservers-extract
						-- "ts_ls",		-- npm un -g typescript typescript-language-server
						-- "jsonls",		-- npm un -g vscode-langservers-extract
						"lua_ls",		-- brew remove lua-language-server
						-- "pylsp",		-- pipx uninstall python-lsp-server
						"rust_analyzer",	-- rustup component remove rust-analyzer
						-- "sqlls",		-- npm un -g sql-language-server
					}
				},
				config = function(_, opts)
					for _, lang in pairs(opts.ensure_installed) do
						require("lspconfig")[lang].setup({})
					end
				end
			},
			"neovim/nvim-lspconfig",
		},
	}
}
