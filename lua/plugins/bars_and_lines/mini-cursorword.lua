return {
	"nvim-mini/mini.cursorword",
	enabled = true,
	event = "BufReadPost",
	version = false,
	config = function()
		require("mini.cursorword").setup({ delay = 50 })
	end,
}
