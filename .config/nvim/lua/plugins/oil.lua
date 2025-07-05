return {
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        lazy = false,

        config = function(_, opts)
            require("oil").setup(opts)
            vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>")
        end,
    }
}
