require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- command mode with ; also
map("n", ";", ":", { desc = "CMD enter command mode" })
-- escape with jk
map("i", "jk", "<ESC>")
-- save file with C-s on all modes
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- session manager keymaps
-- load the session for the current directory
map("n", "<leader>qs", function()
  require("persistence").load()
end)
-- select a session to load
map("n", "<leader>qS", function()
  require("persistence").select()
end)
-- load the last session
map("n", "<leader>ql", function()
  require("persistence").load { last = true }
end)
-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", function()
  require("persistence").stop()
end)

-- window movement with leader hjkl
map("n", "<leader>h", "<C-w>h", { desc = "Moverse a la ventana izquierda" })
map("n", "<leader>j", "<C-w>j", { desc = "Moverse a la ventana inferior" })
map("n", "<leader>k", "<C-w>k", { desc = "Moverse a la ventana superior" })
map("n", "<leader>l", "<C-w>l", { desc = "Moverse a la ventana derecha" })

-- horizontal term
map("n", "<leader>tt", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "New horizontal terminal" })
