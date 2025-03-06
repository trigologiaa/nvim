  -----------
  -- Media --
  -----------

return {
  {
    -- Quickly control your favorite music player
    'AntonVanAssche/music-controls.nvim',
    lazy = false
  },
  {
    -- Highly extensible Rich Presence for Discord
    'vyfor/cord.nvim',
    lazy = false,
    build = ':Cord update'
  }
}