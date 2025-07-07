return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
		config = function (_, opts)
			local dap = require('dap')
			dap.configurations.java = {
				{
					type = 'java';
					request = 'attach';
					name = "Debug (Attach) - Remote";
					hostName = "127.0.0.1";
					port = 10083;
				},
			}
			require("dapui").setup(opts)
		end
	}
}
