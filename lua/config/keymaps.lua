-- This file contains custom key mappings for Neovim.

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--------------------
-- Bars and Lines --
--------------------
vim.keymap.set("n", "<leader>A", "<cmd>")

-- akinsho/bufferline.nvim: A snazzy buffer line built using Lua
vim.keymap.set("n", "<leader>blcl", "<cmd>BufferLineCloseLeft<CR>", {desc = "Close buffers to the left"})
vim.keymap.set("n", "<leader>blco", "<cmd>BufferLineCloseOthers<CR>", {desc = "Close all other buffers"})
vim.keymap.set("n", "<leader>blcr", "<cmd>BufferLineCloseRight<CR>", {desc = "Close buffers to the right"})
vim.keymap.set("n", "<leader>blcn", "<cmd>BufferLineCycleNext<CR>", {desc = "Switch to the next buffer"})
vim.keymap.set("n", "<leader>blcp", "<cmd>BufferLineCyclePrev<CR>", {desc = "Switch to the previous buffer"})
vim.keymap.set("n", "<leader>blgtb", "<cmd>BufferLineGoToBuffer<CR>", {desc = "Go to a specific buffer"})
vim.keymap.set("n", "<leader>blgc", "<cmd>BufferLineGroupClose<CR>", {desc = "Close a buffer group"})
vim.keymap.set("n", "<leader>blgt", "<cmd>BufferLineGroupToggle<CR>", {desc = "Toggle buffer group visibility"})
vim.keymap.set("n", "<leader>blmn", "<cmd>BufferLineMoveNext<CR>", {desc = "Move buffer to the next position"})
vim.keymap.set("n", "<leader>blmp", "<cmd>BufferLineMovePrev<CR>", {desc = "Move buffer to the previous position"})
vim.keymap.set("n", "<leader>blp", "<cmd>BufferLinePick<CR>", {desc = "Pick a buffer to switch to"})
vim.keymap.set("n", "<leader>blpc", "<cmd>BufferLinePickClose<CR>", {desc = "Pick a buffer to close"})
vim.keymap.set("n", "<leader>blsbd", "<cmd>BufferLineSortByDirectory<CR>", {desc = "Sort buffers by directory"})
vim.keymap.set("n", "<leader>blsbe", "<cmd>BufferLineSortByExtension<CR>", {desc = "Sort buffers by file extension"})
vim.keymap.set("n", "<leader>blsbrd", "<cmd>BufferLineSortByRelativeDirectory<CR>", {desc = "Sort buffers by relative directory"})
vim.keymap.set("n", "<leader>blsbt", "<cmd>BufferLineSortByTabs<CR>", {desc = "Sort buffers by tab order"})
vim.keymap.set("n", "<leader>bltr", "<cmd>BufferLineTabRename<CR>", {desc = "Rename the current tab"})
vim.keymap.set("n", "<leader>bltp", "<cmd>BufferLineTogglePin<CR>", {desc = "Toggle buffer pin state"})

-- b0o/incline.nvim: Lightweight floating statuslines, intended for use with Neovim's new global statusline
-- No commands

-- nvim-lualine/lualine.nvim: A blazing fast and easy to configure Neovim statusline
-- No commands

-- mawkler/modicator.nvim: Cursor line number mode indicator. Changes the CursorLineNr highlight based on Vim mode
-- No commands

-- sontungexpt/stcursorword: Highlight the word under the cursor
vim.keymap.set("n", "<leader>cwt", "<cmd>Cursorword toggle<CR>", {desc = "Toggle highlight the word under the cursor"})
vim.keymap.set("n", "<leader>cwe", "<cmd>Cursorword enable<CR>", {desc = "Enable highlight the word under the cursor"})
vim.keymap.set("n", "<leader>cwd", "<cmd>Cursorword disable<CR>", {desc = "Disable highlight the word under the cursor"})

-----------
-- Color --
-----------

-- xzbdmw/colorful-menu.nvim: Colorize your auto completion menu using Tree-sitter
-- No commands

-- max397574/colortils.nvim: A plugin providing utils to work with colors (picker, conversion) inside Neovim
vim.keymap.set("n", "<leader>ct", "<cmd>Colortils<CR>", {desc = "Open the color picker Colortils"})

-- echasnovski/mini.hipatterns: Module of mini.nvim to highlight patterns in text with configurable highlighters
-- No commands

-- rachartier/tiny-devicons-auto-colors.nvim: Automatically updates nvim-web-devicons colors based on your current colorscheme
-- No commands

-- xiyaowong/transparent.nvim: Make your Neovim transparent
vim.keymap.set("n", "<leader>te", "<cmd>TransparentEnable<CR>", {desc = "Make the NeoVim transparent"})
vim.keymap.set("n", "<leader>td", "<cmd>TransparentDisable<CR>", {desc = "Make the NeoVim non transparent"})
vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<CR>", {desc = "Toggle the transparent of the NeoVim"})

-- folke/twilight.nvim: Dim inactive portions of the code you're editing using Tree-sitter
vim.keymap.set("n", "<leader>tlt", "<cmd>Twilight<CR>", {desc = "Toggle the twilight"})
vim.keymap.set("n", "<leader>tle", "<cmd>TwilightEnable<CR>", {desc = "Enable the twilight"})
vim.keymap.set("n", "<leader>tld", "<cmd>TwilightDisable<CR>", {desc = "Disable the twilight"})

-----------------
-- Colorscheme --
-----------------

-- dgox16/oldworld.nvim: Dark theme with relaxing and no-saturated colors
-- No commands

-- folke/tokyonight.nvim: A clean, dark and light Neovim theme written in Lua, with support for LSP, Tree-sitter and lots of plugins
-- No commands

----------------
-- Completion --
----------------

-- zbirenbaum/copilot.lua: Fully featured Lua replacement for GitHub/copilot.vim
vim.keymap.set("n", "<leader>cp", "<cmd>Copilot<CR>", {desc = "Open Copilot"})

-- hrsh7th/nvim-cmp: A completion plugin written in Lua
-- No commands

---------------
-- Debugging --
---------------

-- mfussenegger/nvim-dap: Debug Adapter Protocol client implementation

---------------------------
-- Dependency Management --
---------------------------



---------------------
-- Editing Support --
---------------------

-- folke/zen-mode.nvim: Distraction-free coding
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", {desc = "Toggle Zen Mode"})

-----------
-- Other --
-----------

-- Position cursor at the middle of the screen after scrolling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down half a page and center the cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up half a page and center the cursor

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Map Ctrl+c to escape from other modes
vim.keymap.set({"i", "n", "v"}, "<C-c>", [[<C-\><C-n>]])

----- Tmux Navigation ------
local nvim_tmux_nav = require("nvim-tmux-navigation")

vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft) -- Navigate to the left pane
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown) -- Navigate to the bottom pane
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp) -- Navigate to the top pane
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight) -- Navigate to the right pane
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive) -- Navigate to the last active pane
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext) -- Navigate to the next pane

----- OBSIDIAN -----
vim.keymap.set("n", "<leader>oc", "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>", {desc = "Obsidian Check Checkbox"})
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", {desc = "Insert Obsidian Template"})
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", {desc = "Open in Obsidian App"})
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", {desc = "Show ObsidianBacklinks"})
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", {desc = "Show ObsidianLinks"})
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", {desc = "Create New Note"})
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", {desc = "Search Obsidian"})
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", {desc = "Quick Switch"})

----- OIL -----
vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open parent directory"})

-- Delete all buffers but the current one
vim.keymap.set("n", "<leader>bq", '<Esc>:%bdelete|edit #|normal`"<Return>', {desc = "Delete other buffers but the current one"})

-- Disable key mappings in insert mode
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", {noremap = true, silent = true})

-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", {noremap = true, silent = true})

-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "J", "<Nop>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("x", "K", "<Nop>", {noremap = true, silent = true})

-- Redefine Ctrl+s to save with the custom function
vim.api.nvim_set_keymap("n", "<C-s>", ":lua SaveFile()<CR>", {noremap = true, silent = true})

-- Custom save function
function SaveFile()
  if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end
  local filename = vim.fn.expand("%:t")
  local success, err = pcall(function() vim.cmd("silent! write") end)
  if success then
    vim.notify(filename .. " Saved!")
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR)
  end
end
