return {
  "augmentcode/augment.vim",
  event = "VeryLazy", -- Load the plugin lazily for better startup time
  init = function()
    vim.g.augment_workspace_folders = {
      -- Automatically use the current working directory
      vim.fn.getcwd(),
      -- Add additional project paths as needed
      -- vim.fn.expand("~/projects/shared-libs"),
      -- vim.fn.expand("~/projects/internal-tools"),
    }
  end,
}
