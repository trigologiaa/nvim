  ----------------------------------
  -- Programming Language Support --
  ----------------------------------

return {
  {
    -- MARKDOWN: Improve viewing markdown files directly
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.nvim"
    },
    opts = {
      heading = {
        enabled = true,
        sign = true,
        style = "full",
        icons = {"① ", "② ", "③ ", "④ ", "⑤ ", "⑥ "},
        left_pad = 1
      },
      bullet = {
        enabled = true,
        icons = {"●", "○", "◆", "◇"},
        right_pad = 1,
        highlight = "render-markdownBullet"
      }
    }
  },
  {
    -- MARKDOWN: Simplify creating and following markdown links
    'Nedra1998/nvim-mdlink',
    lazy = false
  },
  {
    -- MARKDOWN: Visualize your Markdown as mindmaps
    "Zeioth/markmap.nvim",
    build = "yarn global add markmap-cli",
    cmd = {
      "MarkmapOpen",
      "MarkmapSave",
      "MarkmapWatch",
      "MarkmapWatchStop"
    },
    opts = {
      html_output = "/tmp/markmap.html",
      hide_toolbar = false,
      grace_period = 3600000
    },
    config = function(_, opts)
      require("markmap").setup(opts)
    end
  },
  {
    -- MARKDOWN: Generate TOC in any markdown file from any other markdown file with customisable levels of headings and affordances for emojis and ensuring that it works on GitHub using relative paths
    'ChuufMaster/markdown-toc',
    lazy = false,
    opts = {
      heading_level_to_match = -1,
      ask_for_heading_level = false,
      toc_format = '%s- [%s](<%s#%s>)'
    }
  },
  {
    -- PYTHON: Tiny plugin to quickly switch Python virtual environments without restarting
    "AckslD/swenv.nvim",
    lazy = false
  },
  {
    -- PYTHON: Switch Python interpreter without restarting LSP
    "neolooong/whichpy.nvim",
    lazy = false,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      "nvim-telescope/telescope.nvim"
    },
    opts = {}
  },
  {
    -- PYTHON: Enhances the development experience for developers using Micro-python for IoT and maker projects
    "jim-at-jibba/micropython.nvim",
    lazy = false,
    dependencies = {
      "akinsho/toggleterm.nvim",
      "stevearc/dressing.nvim"
    }
  },
  {
    -- JSON: Interactive interface for JSON files
    "gennaro-tedesco/nvim-jqx",
    event = {
      "BufReadPost"
    },
    ft = {
      "json",
      "yaml"
    }
  },
  {
    -- TYPESCRIPT: Asynchronous project-wide TypeScript type-checking using the TypeScript compiler (TSC) with results loaded into a quickfix list
    "dmmulroy/tsc.nvim",
    lazy = false
  },
  {
    -- TYPESCRIPT: A port of Matt Pocock's ts-error-translator for VSCode for turning messy and confusing TypeScript errors into plain English
    'dmmulroy/ts-error-translator.nvim',
    lazy = false
  },
  {
    -- JAVA: Everything you need for a painless Java experience
    "nvim-java/nvim-java",
    lazy = false
  },
  {
    -- GO: Go plugin based on LSP and Tree-sitter
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      require("go").setup()
    end,
    event = {
      "CmdlineEnter"
    },
    ft = {
      "go",
      'gomod'
    },
    build = ':lua require("go.install").update_all_sync()'
  },
  {
    -- GO: Generate interface stubs for a type
		'edolphin-ydf/goimpl.nvim',
    lazy = false,
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-lua/popup.nvim',
			'nvim-telescope/telescope.nvim',
			'nvim-treesitter/nvim-treesitter'
		},
		config = function()
			require'telescope'.load_extension'goimpl'
		end
	},
  {
    -- GO: Make Go tests easy
    "yanskun/gotests.nvim",
    ft = "go",
    config = function()
      require("gotests").setup()
    end
  },
  {
    -- YAML: Get, set and autodetect YAML schemas in your buffers
    "someone-stole-my-name/yaml-companion.nvim",
    lazy = false,
    requires = {
        "neovim/nvim-lspconfig",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
      require("telescope").load_extension("yaml_schema")
    end
  },
  {
    -- YAML: Utils to work with YAML files
    "cuducos/yaml.nvim",
    ft = {"yaml"},
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim"
    }
  },
  -- {
  --   -- HTTP: A fast Neovim HTTP client written in Lua
  --   "rest-nvim/rest.nvim",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     opts = function (_, opts)
  --       opts.ensure_installed = opts.ensure_installed or {}
  --       table.insert(opts.ensure_installed, "http")
  --     end
  --   }
  -- },
  {
    -- CSS: Unofficial TailwindCSS tooling
    "luckasRanarison/tailwind-tools.nvim",
    lazy = false,
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim",
      "neovim/nvim-lspconfig"
    },
    opts = {}
  },
  {
    -- CSS: A tool for CSS unit conversions
    'cjodo/convert.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    keys = {
        {"<leader>cn", "<cmd>ConvertFindNext<CR>", desc = "Find next convertable unit"},
        {"<leader>cc", "<cmd>ConvertFindCurrent<CR>", desc = "Find convertable unit in current line"},
        {"<leader>ca", "<cmd>ConvertAll<CR>", mode = {"n", "v"}, desc = "Convert all of a specified unit"}
    }
  },
  {
    -- CSS: Easily visualize the content of your CSS variables in a virtual text
    'farias-hecdin/CSSVarViewer',
    ft = "css",
    config = true
  },
  {
    -- CSS: Quickly highlight the color you defined in your CSS variables
    'farias-hecdin/CSSVarHighlight',
    ft = "css",
    dependencies = "echasnovski/mini.hipatterns",
    config = true,
  },
  {
    -- PHP: Lua version of the Phpactor Vim plugin to take advantage of the latest Neovim features
    "gbprod/phpactor.nvim",
    ft = "php",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig"
    },
    opts = {}
  },
  {
    -- PHP: Methods of assistance in PHP development: create classes, constants, methods, properties; simple copying and deleting of an entity
    'ta-tikoma/php.easy.nvim',
    config = true,
    keys = {
      {'-#', '<CMD>PHPEasyAttribute<CR>', ft = 'php'},
      {'-b', '<CMD>PHPEasyDocBlock<CR>', ft = 'php'},
      {'-r', '<CMD>PHPEasyReplica<CR>', ft = 'php'},
      {'-c', '<CMD>PHPEasyCopy<CR>', ft = 'php'},
      {'-d', '<CMD>PHPEasyDelete<CR>', ft = 'php'},
      {'-uu', '<CMD>PHPEasyRemoveUnusedUses<CR>', ft = 'php'},
      {'-e', '<CMD>PHPEasyExtends<CR>', ft = 'php'},
      {'-i', '<CMD>PHPEasyImplements<CR>', ft = 'php'},
      {'--i', '<CMD>PHPEasyInitInterface<CR>', ft = 'php'},
      {'--c', '<CMD>PHPEasyInitClass<CR>', ft = 'php'},
      {'--ac', '<CMD>PHPEasyInitAbstractClass<CR>', ft = 'php'},
      {'--t', '<CMD>PHPEasyInitTrait<CR>', ft = 'php'},
      {'--e', '<CMD>PHPEasyInitEnum<CR>', ft = 'php'},
      {'-c', '<CMD>PHPEasyAppendConstant<CR>', ft = 'php', mode = {'n', 'v'}},
      {'-p', '<CMD>PHPEasyAppendProperty<CR>', ft = 'php', mode = {'n', 'v'}},
      {'-m', '<CMD>PHPEasyAppendMethod<CR>', ft = 'php', mode = {'n', 'v'}},
      {'__', '<CMD>PHPEasyAppendConstruct<CR>', ft = 'php'},
      {'_i', '<CMD>PHPEasyAppendInvoke<CR>', ft = 'php'},
      {'-a', '<CMD>PHPEasyAppendArgument<CR>', ft = 'php'}
    }
  },
  {
    -- VARIOUS: A hackable markdown, typst, LaTeX, html(inline) & YAML renderer
    "OXY2DEV/markview.nvim",
    lazy = false
  }
}
