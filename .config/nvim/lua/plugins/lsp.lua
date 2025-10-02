return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("rust_analyzer")
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
    end,

    dependencies = {
      {
        "stevearc/conform.nvim",
        opts = {
          formatters_by_ft = {
            lua = { "stylua" },
            rust = { "rustfmt" },
            python = { "black" },
          },
          format_on_save = {},
        },
      },
    },
  },
}
