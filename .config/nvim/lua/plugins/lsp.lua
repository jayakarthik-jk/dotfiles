return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			-- auto complete
			{
				"hrsh7th/nvim-cmp",
				dependencies = {
					"hrsh7th/cmp-nvim-lsp",
					"hrsh7th/cmp-buffer",
					"hrsh7th/cmp-path",
					"hrsh7th/cmp-cmdline",
					"L3MON4D3/LuaSnip",
					"saadparwaiz1/cmp_luasnip"
				},
				config = function()
					local cmp = require("cmp")
					cmp.setup({
						snippet = {
							expand = function(args)
								require('luasnip').lsp_expand(args.body)
							end,
						},
						sources = cmp.config.sources(
							{ { name = 'nvim_lsp' }, { name = 'luasnip' } },
							{ { name = 'buffer' } }
						),
						mapping = cmp.mapping.preset.insert({
							['<C-b>'] = cmp.mapping.scroll_docs(-4),
							['<C-f>'] = cmp.mapping.scroll_docs(4),
							['<C-Space>'] = cmp.mapping.complete(),
							['<C-e>'] = cmp.mapping.abort(),
							['<CR>'] = cmp.mapping.confirm({ select = true }),
						}),
					})
				end
			},
			'nvim-java/nvim-java',
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
					ensure_installed = {
						"html",			-- npm i -g vscode-langservers-extracted
						"jsonls",		-- npm i -g vscode-langservers-extracted
						"cssls",		-- npm i -g vscode-langservers-extracted
						"eslint",		-- npm i -g vscode-langservers-extracted
						"ts_ls",		-- npm i -g typescript typescript-language-server
						"tailwindcss",		-- npm i -g @tailwindcss/language-server
						"lua_ls",		-- brew install lua-language-server
						"rust_analyzer",	-- rustup component add rust-analyzer
						-- "astro",		-- npm i -g @astrojs/language-server
						-- "bashls",		-- npm i -g bash-language-server
						-- "dockerls",		-- npm i -g dockerfile-language-server-nodejs
						-- "biome",		-- npm i -g @biomejs/biome
						-- "sqlls",		-- npm i -g sql-language-server
						-- "gopls",		-- Install: go install golang.org/x/tools/gopls@latest, Uninstall: rm $HOME/go/bin/gopls
						"pylsp",		-- pipx install python-lsp-server
						"jdtls",		-- brew uninstall jdtls
					}
				},
				config = function(_, opts)
					local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
					for _, lang in pairs(opts.ensure_installed) do
						require("lspconfig")[lang].setup({ capabilities = lsp_capabilities, })
					end
				end
			},
		},
	}
}
