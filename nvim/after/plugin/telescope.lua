local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>")
vim.keymap.set('v', '<leader>ps', function()
  -- Get the start and end column positions of the visual selection
  local start_col = vim.fn.col("'<")
  local end_col = vim.fn.col("'>")
  
  local line = vim.fn.getline(".")
  
  local search_term = line:sub(start_col, end_col)
  
  if search_term and #search_term > 0 then
    require('telescope.builtin').live_grep({
      default_text = search_term,
    })
  else
    print("No valid text selected for search!")
  end
end, { desc = "Grep visual selection in project with multi-occurrence support" })


-- Move through files in Find Files section
local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}
