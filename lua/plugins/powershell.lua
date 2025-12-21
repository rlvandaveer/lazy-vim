return {
  "TheLeoP/powershell.nvim",
  dependencies = {
    "mfussenegger/nvim-dap", -- Required for debugging
  },
  ft = "ps1", -- Only load for PowerShell files
  opts = {
    bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
  },
  config = function(_, opts)
    require("powershell").setup(opts)
    -- Optional: Add keybinding for code evaluation
    vim.keymap.set({ "n", "x" }, "<leader>E", function()
      require("powershell").eval()
    end, { desc = "Eval PowerShell code", buffer = true })
  end,
}
