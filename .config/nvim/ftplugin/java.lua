local root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1])

local home = os.getenv('HOME')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_folder = home .. "/.local/share/eclipse/" .. project_name

local config = {
	cmd = {
		"/opt/homebrew/bin/jdtls",
		'-data', workspace_folder
	},
	root_dir = root_dir,
}
require('jdtls').start_or_attach(config)
