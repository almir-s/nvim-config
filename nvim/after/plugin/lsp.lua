local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })

    -- for the auto format
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/lsp.md#explicit-setup
    -- Disable auto-formatting for JavaScript and Vue files
    local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
-- Disable auto-formatting for JavaScript and Vue files
    if filetype ~= 'javascript' and filetype ~= 'vue' then
        lsp.buffer_autoformat()
    end

end)

lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'clangd' },
    handlers = {
        lsp.default_setup,
    },
})


