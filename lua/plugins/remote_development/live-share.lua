return {
	"azratul/live-share.nvim",
	enabled = true,
	cmd = {
		"LiveShareServer",
		"LiveShareJoin",
	},
	version = "v1.0.0",
	dependencies = "jbyuki/instant.nvim",
	config = function()
		vim.g.instant_username = "trigologiaa"
		require("live-share").setup({
			port_internal = 9876,
			max_attempts = 20,
			service_url = "/tmp/service.url",
			service = "serveo.net",
		})
	end,
}
