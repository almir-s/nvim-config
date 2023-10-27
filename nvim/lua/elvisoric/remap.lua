vim.g.mapleader = " "

function map(mode, to, from)
    vim.keymap.set(mode, to, from)
end

map("n", "<leader>pv", vim.cmd.Ex)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true


map("n", "j", "gj")
map("n", "k", "gk")

-- Buffer managment
map("n", "<C-h>", "<C-W>h")
map("n", "<C-l>", "<C-W>l")
map("n", "<C-j>", "<C-W>j")
map("n", "<C-k>", "<C-W>k")

map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- map('n', 'vx', ':lua require"treesitter-unit".select()<CR>')
