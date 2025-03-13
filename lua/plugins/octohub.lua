-- Access all your gihub repos, stats and more in simple keystrokes

return {
  "2kabhishek/octohub.nvim",
  cmd = {
      "OctoRepos",
      "OctoReposByCreated",
      "OctoReposByForks",
      "OctoReposByIssues",
      "OctoReposByLanguages",
      "OctoReposByNames",
      "OctoReposByPushed",
      "OctoReposBySize",
      "OctoReposByStars",
      "OctoReposByUpdated",
      "OctoReposTypeArchived",
      "OctoReposTypeForked",
      "OctoReposTypePrivate",
      "OctoReposTypeStarred",
      "OctoReposTypeTemplate",
      "OctoRepo",
      "OctoStats",
      "OctoActivityStats",
      "OctoContributionStats",
      "OctoRepoStats",
      "OctoProfile",
      "OctoRepoWeb"
  },
  keys = {
      "<leader>goa",
      "<leader>goA",
      "<leader>gob",
      "<leader>goc",
      "<leader>gof",
      "<leader>goF",
      "<leader>gog",
      "<leader>goi",
      "<leader>gol",
      "<leader>goo",
      "<leader>gop",
      "<leader>goP",
      "<leader>gor",
      "<leader>gos",
      "<leader>goS",
      "<leader>got",
      "<leader>goT",
      "<leader>gou",
      "<leader>goU",
      "<leader>gow"
  },
  dependencies = {
      "2kabhishek/utils.nvim",
      "nvim-telescope/telescope.nvim"
  },
  opts = {
    -- 
  }
}