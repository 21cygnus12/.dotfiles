return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",

        opts = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

            auto_install = true,

            highlight = {
                enable = true,
            },
            -- incremental_selection = {
            --     enable = true,
            --     keymaps = {
            --         init_selection = "gnn",
            --         node_incremental = "grn",
            --         scope_incremental = "grc",
            --         node_decremental = "grm",
            --     },
            -- },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
