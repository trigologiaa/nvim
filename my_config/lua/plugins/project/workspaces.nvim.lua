-- Manage workspace directories

return {
  "natecraddock/workspaces.nvim",
  lazy = false,
  config = function()
    vim.cmd([[command! WorkspaceSave lua require('workspaces').save()]])
    vim.cmd([[command! WorkspaceLoad lua require('workspaces').load()]])
  end
}