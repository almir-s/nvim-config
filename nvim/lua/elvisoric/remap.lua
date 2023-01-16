vim.g.mapleader = " "

function map(mode, to, from)
	vim.keymap.set(mode, to, from)
end

map("n", "<leader>pv", vim.cmd.Ex)

map("n", "j", "gj")
map("n", "k", "gk")

-- Buffer managment
map("n", "<C-h>", "<C-W>h")
map("n", "<C-l>", "<C-W>l")
map("n", "<C-j>", "<C-W>j")
map("n", "<C-k>", "<C-W>k")
