-- Plugin for Obsidian, written in Lua

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "MyNotes",
        path = "~/Documents/Obsidian",
      },
    },
    completion = {
      min_chars = 2,
    },
    notes_subdir = "limbo",
    new_notes_location = "limbo",
    attachments = {
      img_folder = "files",
    },
    daily_notes = {
      template = "note",
    },
    mappings = {
      ["<leader>of"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<leader>od"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      ["<leader>onn"] = {
        action = function()
          return require("obsidian").commands.new_note("Newsletter-Issue")
        end,
        opts = { buffer = true },
      },
      ["<leader>ont"] = {
        action = function()
          return require("obsidian").util.insert_template("Newsletter-Issue")
        end,
        opts = { buffer = true },
      },
    },
    note_frontmatter_func = function(note)
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,
    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%a",
      gtime_format = "%H:%M",
      tags = "",
    },
  },
}
