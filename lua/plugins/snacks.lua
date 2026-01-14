-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.explorer = opts.explorer or {}
    opts.explorer.filters = opts.explorer.filters or {}

    opts.explorer.filters.git_ignored = false -- Show git-ignored files by default
    opts.explorer.filters.custom = { "^%.git$", "^%.git/" } -- Hide .git directory

    -- Optional: Add visual styling for ignored files
    opts.explorer.styles = opts.explorer.styles or {}
    opts.explorer.styles.git_ignored = {
      fg = "comment",
      italic = true,
    }

    opts.terminal = {
      shell = "pwsh -NoLogo",
    }

    return opts
  end,
}
