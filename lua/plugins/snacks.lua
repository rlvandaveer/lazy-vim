-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      filters = {
        git_ignored = false, -- Show git-ignored files
        custom = { "^\\.git$" }, -- Hide only .git directory itself
      },
      ---@type snacks.explorer.Config.icons
      icons = {
        git_status = {
          ignored = "◌", -- Icon for ignored files (or use "" to hide icon)
        },
      },
      styles = {
        -- Style for git-ignored files
        git_ignored = {
          fg = "comment", -- Dim color (uses your theme's comment color)
          italic = true, -- Optional: make them italic
        },
      },
    },
  },
}
