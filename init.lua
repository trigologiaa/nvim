-- bootstrap lazy.nvim, LazyVim and your plugins
vim.env.PATH = '/home/gaston/.asdf/shims:' .. vim.env.PATH
require("config.lazy")
