return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*",
    -- temp fix for bug i think
    dependencies = {
      "nvim-neorg/tree-sitter-norg",
      "nvim-neorg/tree-sitter-norg-meta",
    },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/norg",
            },
          },
        },
        ["core.journal"] = {
          config = {
            journal_folder = "journal",
            use_template = true,
            workspace = "notes",
          },
        },
      },
    },
  },
}
