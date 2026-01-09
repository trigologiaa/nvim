vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.cmdheight = 1
vim.opt.showtabline = 1
vim.opt.laststatus = 3
vim.opt.pumheight = 10
vim.opt.pumblend = 0
vim.opt.winblend = 0
vim.opt.fillchars = {
	eob = " ",
	vert = "|",
	fold = " ",
	diff = "/",
	msgsep = "‾",
}
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.backspace = {
	"indent",
	"eol",
	"start",
}
vim.opt.wrap = true
vim.opt.scrolloff = 15
vim.opt.completeopt = {
	"menu",
	"menuone",
	"noselect",
	"popup",
}
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.wrapscan = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.colorcolumn = "100"
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.conceallevel = 2
vim.opt.concealcursor = ""
vim.opt.synmaxcol = 3000
vim.opt.winborder = "rounded"
vim.opt.updatetime = 300
vim.opt.timeoutlen = 800
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.guicursor = {
	"n-v-c:block",
	"i-ci-ve:ver30",
	"r-cr:hor20",
	"o:hor50",
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
	"sm:block-blinkwait175-blinkoff150-blinkon175",
}
vim.opt.mousemoveevent = true
vim.opt.clipboard = "unnamedplus"
