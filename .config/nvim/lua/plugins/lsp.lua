return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("rust_analyzer")
            vim.lsp.enable("lua_ls")
        end,
    },
}
