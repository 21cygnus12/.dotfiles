vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 999
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.conceallevel = 2

vim.lsp.enable({
  "rust_analyzer",
  "lua_ls",
  "ty",
})
