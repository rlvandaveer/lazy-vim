return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {
          settings = {
            omnisharp = {
              enableRoslynAnalyzers = true,
              organizeImportsOnFormat = true,
            },
          },
        },
      },
    },
  },
}
