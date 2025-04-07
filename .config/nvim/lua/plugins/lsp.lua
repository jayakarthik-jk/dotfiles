return {

	{
		"neovim/nvim-lspconfig",
		dependency = { "saghen/blink.cmp" },
		opts = {
			servers = {
				html = {},			-- npm i -g vscode-langservers-extracted
				jsonls = {},		-- npm i -g vscode-langservers-extracted
				cssls = {},			-- npm i -g vscode-langservers-extracted
				eslint = {},		-- npm i -g vscode-langservers-extracted
				ts_ls = {},			-- npm i -g typescript typescript-language-server
				tailwindcss = {},	-- npm i -g @tailwindcss/language-server
				lua_ls = {},		-- brew install lua-language-server
				rust_analyzer = {},	-- rustup component add rust-analyzer
				prismals = {},		-- npm install -g @prisma/language-server
				astro = {},		-- npm i -g @astrojs/language-server
				-- bashls = {},		-- npm i -g bash-language-server
				-- dockerls = {},	-- npm i -g dockerfile-language-server-nodejs
				-- biome = {},		-- npm i -g @biomejs/biome
				-- sqlls = {},		-- npm i -g sql-language-server
				gopls = {},			-- Install: go install golang.org/x/tools/gopls@latest, Uninstall: rm $HOME/go/bin/gopls
				pylsp = {},			-- pipx install python-lsp-server
				-- jdtls = {},		-- brew install jdtls
				zls = {},		-- brew install zls
			}
		},
		config = function (_, opts)
			local lspconfig = require('lspconfig')
			for server, config in pairs(opts.servers) do
				config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end
	}
}
