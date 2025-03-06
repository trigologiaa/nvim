  ---------
  -- Git --
  ---------

return {
  {
    -- Simple clone of the plugin vim-fugitive which is written in Lua
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        blame = "<Leader>gb",
        quit_blame = "q",
        blame_commit = "<CR>",
        quit_blame_commit = "q",
        browse = "<Leader>go",
        open_pull_request = "<Leader>gp",
        create_pull_request = "<Leader>gn",
        diff = "<Leader>gd",
        diff_close = "<Leader>gD",
        revert = "<Leader>gr",
        revert_file = "<Leader>gR"
      }
    }
  },
  {
    -- A telescope picker to find which files and preview what changes have been made to your git branch across multiple commits
    'mrloop/telescope-git-branch.nvim',
    lazy = false
  },
  {
    -- Git integration: signs, hunk actions, blame, etc
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup(
        {
          on_attach = function(bufnr)
            local gitsigns = require("gitsigns")
            local function map(mode, l, r, opts)
              opts = opts or {}
              opts.buffer = bufnr
              vim.keymap.set(mode, l, r, opts)
            end
            map("n", "]c", function() if vim.wo.diff then vim.cmd.normal({"]c", bang = true}) else gitsigns.nav_hunk("next") end end)
            map("n", "[c", function() if vim.wo.diff then vim.cmd.normal({"[c", bang = true}) else gitsigns.nav_hunk("prev") end end)
            map("n", "<leader>hs", gitsigns.stage_hunk)
            map("n", "<leader>hr", gitsigns.reset_hunk)
            map("v", "<leader>hs", function() gitsigns.stage_hunk({vim.fn.line("."), vim.fn.line("v")}) end)
            map("v", "<leader>hr", function() gitsigns.reset_hunk({vim.fn.line("."), vim.fn.line("v")}) end)
            map("n", "<leader>hS", gitsigns.stage_buffer)
            map("n", "<leader>hu", gitsigns.undo_stage_hunk)
            map("n", "<leader>hR", gitsigns.reset_buffer)
            map("n", "<leader>hp", gitsigns.preview_hunk)
            map("n", "<leader>hb", function() gitsigns.blame_line({full = true}) end)
            map("n", "<leader>tb", gitsigns.toggle_current_line_blame)
            map("n", "<leader>hd", gitsigns.diffthis)
            map("n", "<leader>hD", function() gitsigns.diffthis("~") end)
            map("n", "<leader>td", gitsigns.toggle_deleted)
            map({"o", "x"}, "ih", ":<C-U>Gitsigns select_hunk<CR>")
          end
        }
      )
    end
  },
  {
    -- Generate Git permalinks, open them in your browser, load files locally from permalinks, and more
    'trevorhauter/gitportal.nvim',
    lazy = false
  },
  {
    -- Single tabpage interface for easily cycling through diffs for all modified files for any Git rev
    "sindrets/diffview.nvim",
    lazy = false
  },
  {
    -- A plugin to visualise and resolve merge conflicts
    'akinsho/git-conflict.nvim',
    lazy = false,
    version = "*",
    config = true
  },
  {
    -- Lightweight and nimble Git client
    "chrisgrieser/nvim-tinygit",
    lazy = false,
    dependencies = "stevearc/dressing.nvim"
  },
  {
    -- Quickly add co-authors to commits
    '2kabhishek/co-author.nvim',
    dependencies = {
        'stevearc/dressing.nvim',
        'nvim-telescope/telescope.nvim'
    },
    cmd = {
      'CoAuthor'
    }
  },
  {
    -- Open remote Git repositories in the comfort of Neovim
    "moyiz/git-dev.nvim",
    lazy = false,
    opts = {},
  },
  {
    -- Git GUI powered by libgit2
    'SuperBo/fugit2.nvim',
    build = false,
    opts = {
      width = 100,
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
      {
        'chrisgrieser/nvim-tinygit',
        dependencies = 'stevearc/dressing.nvim'
      },
    },
    cmd = {
      'Fugit2',
      'Fugit2Diff',
      'Fugit2Graph'
    },
    keys = {
      {'<leader>F', mode = 'n', '<cmd>Fugit2<cr>'}
    }
  },
  {
    -- Plugin for calling lazygit
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
        {"<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit"}
    }
  },
  {
    -- Access all your gihub repos, stats and more in simple keystrokes
    '2kabhishek/octohub.nvim',
    cmd = {
        'OctoRepos',
        'OctoReposByCreated',
        'OctoReposByForks',
        'OctoReposByIssues',
        'OctoReposByLanguages',
        'OctoReposByNames',
        'OctoReposByPushed',
        'OctoReposBySize',
        'OctoReposByStars',
        'OctoReposByUpdated',
        'OctoReposTypeArchived',
        'OctoReposTypeForked',
        'OctoReposTypePrivate',
        'OctoReposTypeStarred',
        'OctoReposTypeTemplate',
        'OctoRepo',
        'OctoStats',
        'OctoActivityStats',
        'OctoContributionStats',
        'OctoRepoStats',
        'OctoProfile',
        'OctoRepoWeb'
    },
    keys = {
        '<leader>goa',
        '<leader>goA',
        '<leader>gob',
        '<leader>goc',
        '<leader>gof',
        '<leader>goF',
        '<leader>gog',
        '<leader>goi',
        '<leader>gol',
        '<leader>goo',
        '<leader>gop',
        '<leader>goP',
        '<leader>gor',
        '<leader>gos',
        '<leader>goS',
        '<leader>got',
        '<leader>goT',
        '<leader>gou',
        '<leader>goU',
        '<leader>gow'
    },
    dependencies = {
        '2kabhishek/utils.nvim',
        'nvim-telescope/telescope.nvim'
    },
    opts = {}
  }
}
