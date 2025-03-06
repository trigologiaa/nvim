  ------------------
  -- Fuzzy Finder --
  ------------------

return {
  {
    -- Highly extendable fuzzy finder over lists, built on the latest awesome features from Neovim core, centered around modularity, allowing for easy customization
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
      {
        "isak102/telescope-git-file-history.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "tpope/vim-fugitive"
        }
      }
    },
    config = function()
      require("telescope").setup({extensions = {undo = {}}})
      require("telescope").load_extension("undo")
    end
  },
  {
    -- It sets vim.ui.select to Telescope
		"nvim-telescope/telescope-ui-select.nvim",
    lazy = false,
		config = function()
			require("telescope").setup({extensions = {["ui-select"] = {require("telescope.themes").get_dropdown({})}}})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("noice")
		end
	}
}