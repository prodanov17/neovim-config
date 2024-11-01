local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'ts_ls',
  'eslint',
})

require'lspconfig'.pyright.setup{
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",  -- Disable type checking (optional)
                reportOptionalMemberAccess = "none"  -- Disable "Optional member access" warning
            }
        }
    }
}


-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-s>'] = cmp.mapping.confirm({ select = true }),
  ["<C-y>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

-- Initial configuration
local virtual_text = false

-- Function to toggle virtual_text
function ToggleVirtualText()
    virtual_text = not virtual_text
    vim.diagnostic.config({
        virtual_text = virtual_text
    })
    print("Virtual Text: " .. tostring(virtual_text))
end

-- Initial setup
vim.diagnostic.config({
    virtual_text = virtual_text
})

-- Create a keymap to toggle virtual_text (optional)
vim.api.nvim_set_keymap('n', '<leader>tv', ':lua ToggleVirtualText()<CR>', { noremap = true, silent = true })
