return {
	"mason-org/mason-lspconfig.nvim",
	enabled = true,
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = {
			"gopls",
			"lua_ls",
			"pyright",
			"r-languageserver",
		},
		automatic_installation = true,
		diagnostics = {
			virtual_text = true,
		},
	},
}
