return {
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",
		keys = {
			{ "K", vim.lsp.buf.hover, mode = "n", desc = "Hover Text" },
			{ "gd", vim.lsp.buf.definition, mode = "n", desc = "Go to definition" },
			{ "gD", vim.lsp.buf.declaration, mode = "n", desc = "Go to declaration" },
			{ "gi", vim.lsp.buf.implementation, mode = "n", desc = "Go to implementation" },
			{ "go", vim.lsp.buf.type_definition, mode = "n", desc = "Go to type definition" },
			{ "gr", vim.lsp.buf.references, mode = "n", desc = "References" },
			{ "gs", vim.lsp.buf.signature_help, mode = "n", desc = "Signature help" },
			{ "<space>cr", vim.lsp.buf.rename, mode = "n", desc = "Rename" },
			{ "<space>cf", vim.lsp.buf.format, mode = "n", desc = "Format" },
		},
		opts = {
			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
			},
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono"
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				cmdline = {},
			},
		},
		opts_extend = { "sources.default" }
	}
}
