return {
	"nvim-neotest/neotest",
	enabled = true,
	event = "VeryLazy",
	ft = {
		"go",
		"lua",
		"python",
		"java",
		"javascript",
		"typescript",
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
		"nvim-neotest/neotest-jest",
		"volodya-lombrozo/neotest-ruby-minitest",
		"olimorris/neotest-rspec",
	},
	opts = function(_, opts)
		opts.adapters = opts.adapters or {}
		opts.adapters["neotest-jest"] = require("config.test.jest")
		opts.adapters["neotest-python"] = require("config.test.pytest")
		opts.adapters["neotest-busted"] = require("config.test.busted")
		opts.adapters["neotest-golang"] = require("config.test.golang")
		opts.adapters["neotest-java"] = require("config.test.java")
		opts.adapters["neotest-ruby-minitest"] = require("config.test.minitest")
		opts.adapters["neotest-rspec"] = require("config.test.rspec")
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
