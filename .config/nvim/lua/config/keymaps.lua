vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end)

vim.keymap.set("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end)
