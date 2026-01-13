local lsp = {
	go = require("lsp.go"),
	lua = require("lsp.lua"),
	python = require("lsp.python"),
	r = require("lsp.r"),
	java = require("lsp.java"),
}

for name, config in pairs(lsp) do
	vim.lsp.config[name] = config
	vim.lsp.enable(name)
end

vim.lsp.inlay_hint.enable(true)
