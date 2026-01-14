return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"mfussenegger/nvim-dap-python",
		"rcarriga/nvim-dap-ui",
	},
	enabled = true,
	ft = {
		"go",
		"lua",
		"python",
	},
	config = function()
		local dap = require("dap")
		local debugpy_path = vim.fn.expand("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
		require("dap-python").setup(debugpy_path)
		require("dap-python").test_runner = "pytest"
		local mason_pkg_path = vim.fn.expand("~/.local/share/nvim/mason/packages/local-lua-debugger-vscode/extension/")
		local adapter_path = mason_pkg_path .. "extension/debugAdapter.js"
		dap.adapters.codelldb = {
			type = "executable",
			command = "codelldb",
		}
		dap.configurations.c = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					local target = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					if vim.fn.filereadable("Makefile") == 1 then
						vim.fn.system("make")
					end
					return target
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				runInTerminal = true,
			},
		}
		dap.adapters["local-lua"] = {
			type = "executable",
			command = "node",
			args = {
				adapter_path,
			},
			enrich_config = function(config, on_config)
				if not config["extensionPath"] then
					local c = vim.deepcopy(config)
					c.extensionPath = mason_pkg_path
					on_config(c)
				else
					on_config(config)
				end
			end,
		}
		dap.configurations.lua = {
			{
				type = "local-lua",
				request = "launch",
				name = "Launch current file",
				verbose = false,
				cwd = "${workspaceFolder}",
				program = {
					lua = "lua",
					file = "${file}",
				},
				args = {
					--,
				},
			},
		}
		dap.adapters.nlua = function(callback, config)
			callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
		end
		table.insert(
			dap.configurations.lua,
			{ type = "nlua", request = "attach", name = "Attach to running Neovim instance" }
		)
	end,
}
