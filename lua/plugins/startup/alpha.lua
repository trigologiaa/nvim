return {
	"goolord/alpha-nvim",
	enabled = true,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}
		local trigologiaa_section = {
			type = "text",
			val = "  trigologiaa  ",
			opts = {
				hl = "String",
				position = "center",
			},
		}
		dashboard.section.buttons.val = {
			dashboard.button("n", "  -> New file", "<cmd>ene | startinsert<CR>"),
			dashboard.button("f", "  -> Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("t", "  -> Find text", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("r", "  -> Recent", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("p", "  -> Projects", "<cmd>Telescope projects<CR>"),
			dashboard.button("l", "󰒲  -> Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("m", "󰮤  -> Mason", "<cmd>Mason<CR>"),
			dashboard.button(
				"s",
				"  -> Settings",
				"<cmd>Telescope find_files cwd=" .. vim.fn.stdpath("config") .. "<CR>"
			),
			dashboard.button("q", "  -> Quit", "<cmd>qa<CR>"),
		}
		local function get_footer()
			-- local date = os.date(" %Y-%m-%d")
			-- local time = os.date(" %H:%M:%S")
			local v = vim.version()
			local nvim_v = string.format(" v%d.%d.%d", v.major, v.minor, v.patch)
			local mason_path = vim.fn.stdpath("data") .. "/mason/packages"
			local lsp_count = 0
			local p = vim.loop.fs_scandir(mason_path)
			if p then
				while true do
					local name = vim.loop.fs_scandir_next(p)
					if not name then
						break
					end
					lsp_count = lsp_count + 1
				end
			end
			local mason_info = string.format(" LSPs: %d", lsp_count)
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			local lazy_info = string.format(" %d/%d plugins", stats.loaded, stats.count)
			local load_time = string.format("󱘖 %sms", ms)
			-- local line1 = string.format("%-30s %s", date, time)
			local line2 = string.format("%-30s %s", nvim_v, mason_info)
			local line3 = string.format("%-30s %s", lazy_info, load_time)
			return {
				-- line1,
				-- "",
				line2,
				"",
				line3,
			}
		end
		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				dashboard.section.footer.val = get_footer()
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
		dashboard.config.layout = {
			{
				type = "padding",
				val = 2,
			},
			dashboard.section.header,
			{
				type = "padding",
				val = 1,
			},
			trigologiaa_section,
			{
				type = "padding",
				val = 2,
			},
			dashboard.section.buttons,
			{
				type = "padding",
				val = 1,
			},
			dashboard.section.footer,
		}
		dashboard.section.footer.opts.hl = "AlphaButtonShortcut"
		dashboard.section.footer.position = "center"
		alpha.setup(dashboard.opts)
	end,
}
