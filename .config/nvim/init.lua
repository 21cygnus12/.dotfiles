vim.g.mapleader = " "
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
vim.opt.conceallevel = 2

vim.cmd.packadd {
    "nvim.undotree",
}

vim.pack.add {
    "https://github.com/navarasu/onedark.nvim",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/chomosuke/typst-preview.nvim",
    "https://github.com/nvim-orgmode/orgmode",
    "https://github.com/nvim-orgmode/org-bullets.nvim",
}

vim.lsp.enable {
    "lua_ls",
    "rust_analyzer",
    "tinymist",
    "org",
}

require "orgmode".setup {
    org_agenda_files = '~/org/**/*',
    org_default_notes_file = '~/org/inbox.org',
    org_hide_emphasis_markers = true,
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'org',
  callback = function()
    vim.keymap.set('i', '<S-CR>', '<cmd>lua require("orgmode").action("org_mappings.meta_return")<CR>', {
      silent = true,
      buffer = true,
    })
  end,
})

require "org-bullets".setup()

require "nvim-treesitter".install {
    "rust",
    "lua",
    "typst",
}

require "onedark".setup {
    style = "deep"
}
require "onedark".load()

require "oil".setup()

vim.keymap.set("n", "<leader>u", "<cmd>Undotree<cr>")
vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep_native<cr>")
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>")
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]])
