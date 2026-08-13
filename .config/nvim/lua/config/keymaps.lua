vim.keymap.set("n", "<leader>u", "<cmd>Undotree<cr>")
vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep_native<cr>")
vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua buffers<cr>")
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>")
vim.keymap.set("n", "<leader>fnf", function()
  require("fzf-lua").files({ cwd = "~/norg" })
end)
vim.keymap.set("n", "<leader>fng", function()
  require("fzf-lua").live_grep({ cwd = "~/norg" })
end)

local function open_project(cwd)
  require("fzf-lua").files({
    cwd = cwd,
    fd_opts = "--type d --max-depth 1",
    actions = {
      ["enter"] = function(selected)
        local folder_name = require("fzf-lua").path.entry_to_file(selected[1])
        vim.cmd("cd " .. cwd .. vim.fn.fnameescape(folder_name.path))
        vim.cmd("Oil .")
      end,
    },
  })
end

vim.keymap.set("n", "<leader>fp", function()
  open_project("~/Projects/")
end)
vim.keymap.set("n", "<leader>cp", function()
  vim.ui.input({ prompt = "Create project: " }, function(input)
    if not input or input == "" then
      return
    end
    local cwd = "/home/zack/Projects/" .. input
    vim.fn.mkdir(cwd)
    vim.cmd("cd " .. cwd)
    vim.cmd("Oil .")
  end)
end)
vim.keymap.set("n", "<leader>fc", function()
  open_project("~/.dotfiles/.config/")
end)
vim.keymap.set("n", "<leader>n", function()
  vim.cmd("cd ~/norg/")
  vim.cmd("Oil .")
end)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+y$]])
vim.keymap.set("n", "<leader>j", "<cmd>Neorg journal today<cr>")
