  ----------
  -- Game --
  ----------

return {
  {
    -- A Neovim plugin designed to make you better at Vim Movements.
    "ThePrimeagen/vim-be-good",
    lazy = false
  },
  {
    -- A collection of games such as Freecell, Shenzhen Solitaire and The Emissary.
    "rktjmp/playtime.nvim",
    lazy = false
  },
  {
    -- It lets you execute aesthetically pleasing, cellular automaton animations based on the content of Neovim buffer
    "eandrju/cellular-automaton.nvim",
    cmd = {
      "CellularAutomaton",
      "CellularAutomaton make_it_rain",
      "CellularAutomaton game_of_life"
    },
  },
  {
    -- Simple little elf who fetches Advent of Code puzzle input for you.
    "csessh/aoc.nvim",
    lazy = false,
    dependencies = "nvim-lua/plenary.nvim",
    opts = {}
  },
  {
    -- A plugin to automate testcases management and checking for Competitive Programming contests.
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function() require('competitest').setup() end,
    cmd = {
      "CompetiTest add_testcase",
      "CompetiTest edit_testcase"
    }
  },
  {
    -- Solve Leetcode problems.
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim"
    },
    opts = {},
    cmd = {
      "Leet"
    }
  },
  {
    -- Browse and solve Exercism problems.
    '2kabhishek/exercism.nvim',
    cmd = {
        'ExercismLanguages',
        'ExercismList',
        'ExercismSubmit',
        'ExercismTest'
    },
    keys = {
        '<leader>exa',
        '<leader>exl',
        '<leader>exs',
        '<leader>ext'
    },
    dependencies = {
        '2kabhishek/utils.nvim',
        'stevearc/dressing.nvim',
        '2kabhishek/termim.nvim',
    },
    opts = {}
  }
}