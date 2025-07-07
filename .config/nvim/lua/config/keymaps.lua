local utils = require "utils"

local map = utils.map
local cmd = utils.cmd

-- hard mode
local all_mode = { 'n', 'v', 'i' }
map("<Up>", "<Nop>", "Disable up arrow", all_mode)
map("<Down>", "<Nop>", "Disable down arrow", all_mode)
map("<Left>", "<Nop>", "Disable left arrow", all_mode)
map("<Right>", "<Nop>", "Dusable right arrow", all_mode)

-- Copy to clipboard
map('Y', '"+Y', "Copy to system buffer", { 'n', 'x' })

-- Window focus change
map("<C-h>", "<C-w>h", "Focus left window")
map("<C-j>", "<C-w>j", "Focus bottom window")
map("<C-k>", "<C-w>k", "Focus top window")
map("<C-l>", "<C-w>l", "Focus right window")


map('J', "<Nop>")

map("<C-d>", cmd "bd", "Delete current buffer")

-- pane split, most probably don't required
map("<C-S-\\>", cmd "vsplit", "Split pane vertically")
map("<C-S-->", cmd "split", "Split pane horizontally")

-- Select pasted text
map("gp", "`[v`]", "Copy pasted text")

-- Leader
-- Oil
map("<leader>e", utils.cmd "Oil", "Toggle Explorer")
-- fuzy finder
local fzf = require("fzf-lua")
map("<C-S-p>", fzf.commands, "Command Pallete")
map("<leader> ", fzf.files, "Search File")

-- Search
map("<leader>sg", fzf.live_grep, "Global Search")
map("<leader>ss", fzf.lsp_document_symbols, "Search Symbols")
map("<leader>sb", fzf.lsp_document_symbols, "Search Buffers")

-- code actions
map("<leader>ca", fzf.lsp_code_actions, "Code Actions")
map("<space>cr", vim.lsp.buf.rename, "Rename")
map("<space>cf", vim.lsp.buf.format, "Format")

-- VCS
map("<leader>gs", utils.git_status, "VCS status")

-- lsp autocomplete
map("K", vim.lsp.buf.hover, "Hover Text")
map("gd", vim.lsp.buf.definition, "Go to definition")
map("gD", vim.lsp.buf.declaration, "Go to declaration")
map("gi", vim.lsp.buf.implementation, "Go to implementation")
map("go", vim.lsp.buf.type_definition, "Go to type definition")
map("gr", vim.lsp.buf.references, "References")
map("gs", vim.lsp.buf.signature_help, "Signature help")

-- trouble
map(
	"<leader>xX",
	cmd "Trouble diagnostics toggle",
	"Diagnostics"
);
map(
	"<leader>xx",
	cmd "Trouble diagnostics toggle filter.buf=0",
	"Buffer Diagnostics"
);
map(
	"<leader>cs",
	cmd "Trouble symbols toggle focus = true win.position=bottom",
	"Symbols"
);
map(
	"<leader>cl",
	cmd "Trouble lsp toggle focus=false win.position=right",
	"LSP Definitions / references / ..."
);
map(
	"<leader>xL",
	cmd "Trouble loclist toggle",
	"Location List"
);
map(
	"<leader>xQ",
	cmd "Trouble qflist toggle",
	"Quickfix List"
);
