vim.opt_local.expandtab = false
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

local function map(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { buffer = true, silent = true, desc = desc })
end

map("<leader>dT", function()
	require("dap-go").debug_test()
end, "debug [T]est under cursor")
map("<leader>dL", function()
	require("dap-go").debug_last_test()
end, "debug [L]ast test")
