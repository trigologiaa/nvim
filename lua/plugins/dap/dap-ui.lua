return {
	"rcarriga/nvim-dap-ui",
	enabled = true,
	ft = {
		"go",
		"lua",
	},
	dependencies = {
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap",
	},
	opts = {
		icons = {
			expanded = "",
			collapsed = "",
			current_frame = "",
		},
		mappings = {
			expand = {
				"<CR>",
				"<2-LeftMouse>",
			},
			open = "o",
			remove = "d",
			edit = "e",
			repl = "r",
			toggle = "t",
		},
		element_mappings = {
			--,
		},
		expand_lines = vim.fn.has("nvim-0.7") == 1,
		force_buffers = true,
		layouts = {
			{
				elements = {
					{
						id = "scopes",
						size = 0.25,
					},
					{
						id = "breakpoints",
						size = 0.25,
					},
					{
						id = "stacks",
						size = 0.25,
					},
					{
						id = "watches",
						size = 0.25,
					},
				},
				size = 40,
				position = "left",
			},
			{
				elements = {
					"repl",
					"console",
				},
				size = 10,
				position = "bottom",
			},
		},
		floating = {
			max_height = nil,
			max_width = nil,
			border = "single",
			mappings = {
				["close"] = {
					"q",
					"<Esc>",
				},
			},
		},
		controls = {
			enabled = vim.fn.exists("+winbar") == 1,
			element = "repl",
			icons = {
				pause = "",
				play = "",
				step_into = "",
				step_over = "",
				step_out = "",
				step_back = "",
				run_last = "",
				terminate = "",
				disconnect = "",
			},
		},
		render = {
			max_type_length = nil,
			max_value_lines = 100,
			indent = 1,
		},
	},
	config = function(_, opts)
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup(opts)
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open({})
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close({})
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close({})
		end
	end,
}
