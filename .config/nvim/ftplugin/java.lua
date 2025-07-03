local root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw', 'build.xml'}, { upward = true })[1])

local home = os.getenv('HOME')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_folder = home .. "/.local/share/eclipse/" .. project_name

local config = {
	cmd = {
		"/opt/homebrew/bin/jdtls",
		'-data', workspace_folder
	},
	root_dir = root_dir,
	init_options = {
		bundles = {
			vim.fn.glob("/Users/jaya-21208/Applications/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1)
		}
	},
	settings = {
		java = {
			eclipse = {
				downloadSources = true,
			},
			configuration = {
				updateBuildConfiguration = "interactive",
				runtimes = {
					{
						name = "JavaSE-11",
						path = "/opt/homebrew/Cellar/openjdk@11/11.0.27/libexec/openjdk.jdk/Contents/Home/"
					},
				}
			}
		}
	}
}
require('jdtls').start_or_attach(config)
