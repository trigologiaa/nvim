return {
	"samjwill/nvim-unception",
	enabled = true,
	lazy = false,
	init = function()
		vim.g.unception_block_while_host_edits = true
	end,
}
