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
			"clangd",
			"eslint",
			"gopls",
			"herb_ls",
			"html",
			"kotlin_language_server",
			"lua_ls",
			"marksman",
			"pyright",
			"r_language_server",
			"ruby_lsp",
			"ruff",
			"vtsls",
			"vue_ls",
		},
		automatic_installation = true,
		automatic_enable = {
			exclude = {
				"jdtls",
				"oxfmt",
				"rubocop",
				"solargraph",
			},
		},
	},
}
