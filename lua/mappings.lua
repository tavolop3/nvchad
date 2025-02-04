require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- command mode with ; also
map("n", ";", ":", { desc = "CMD enter command mode" })
-- escape with jk
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
-- save file with C-s on all modes
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- session manager keymaps
-- load the session for the current directory
map("n", "<leader>qs", function()
  require("persistence").load()
end, { desc = "Load session" })
-- select a session to load
map("n", "<leader>qS", function()
  require("persistence").select()
end, { desc = "Select session" })
-- load the last session
map("n", "<leader>ql", function()
  require("persistence").load { last = true }
end, { desc = "Load last session" })
-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Don't save session on exit" })

-- window movement with leader hjkl
map("n", "<leader>h", "<C-w>h", { desc = "Moverse a la ventana izquierda" })
map("n", "<leader>j", "<C-w>j", { desc = "Moverse a la ventana inferior" })
map("n", "<leader>k", "<C-w>k", { desc = "Moverse a la ventana superior" })
map("n", "<leader>l", "<C-w>l", { desc = "Moverse a la ventana derecha" })

-- horizontal term
map("n", "<leader>tt", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "New horizontal terminal" })

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", { silent = true, noremap = true })

vim.keymap.set("n", "zK", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end)
