return {
	"nvim-neotest/neotest",
	enabled = true,
	event = "VeryLazy",
	ft = {
		"go",
		"lua",
		"python",
		"java",
	},
	dependencies = {
		"nvim-neotest/nvim-nio",
		"MisanthropicBit/neotest-busted",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-plenary",
		"nvim-neotest/neotest-vim-test",
		"nvim-neotest/neotest-python",
		"fredrikaverpil/neotest-golang",
		"rcasia/neotest-java",
	},
	opts = function(_, opts)
		opts.adapters = opts.adapters or {}
		opts.adapters["neotest-python"] = {
			dap = {
				justMyCode = false,
			},
			args = {
				"--log-level",
				"DEBUG",
			},
			runner = "pytest",
			python = ".venv/bin/python",
		}
		opts.adapters["neotest-busted"] = {
			busted_command = "busted",
			no_nvim = true,
			busted_args = {
				"--shuffle-files",
			},
			busted_paths = {
				"./?.lua",
				"./lua/?.lua",
				"./spec/?.lua",
			},
			parametric_test_discovery = false,
			local_luarocks_only = false,
		}
		opts.adapters["neotest-golang"] = {
			go_test_args = {
				"-v",
				"-race",
				"-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
			},
		}
		opts.adapters["neotest-java"] = {
			incremental_build = true,
			jvm_args = {},
		}
	end,
	config = function(_, opts)
		if opts.adapters then
			local adapters = {}
			for name, config in pairs(opts.adapters or {}) do
				if type(name) == "number" then
					if type(config) == "string" then
						config = require(config)
					end
					adapters[#adapters + 1] = config
				elseif config ~= false then
					local adapter = require(name)
					if type(config) == "table" and not vim.tbl_isempty(config) then
						local meta = getmetatable(adapter)
						if adapter.setup then
							adapter.setup(config)
						elseif adapter.adapter then
							adapter.adapter(config)
							adapter = adapter.adapter
						elseif meta and meta.__call then
							adapter(config)
						else
							error("Adapter " .. name .. " does not support setup")
						end
					end
					adapters[#adapters + 1] = adapter
				end
			end
			opts.adapters = adapters
		end
		require("neotest").setup(opts)
	end,
}
