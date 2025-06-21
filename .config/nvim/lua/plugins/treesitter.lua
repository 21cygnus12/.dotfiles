return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      incremental_selection = { enable = true },
      textobjects = { enable = true },
      auto_install = true,
    },
  },
}
