-- Function to trim trailing whitespace
local function trim_whitespace()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
end

-- Create an autocommand group
local trim_whitespace_group = vim.api.nvim_create_augroup('TrimWhitespace', { clear = true })

-- Add the autocommand to the group
vim.api.nvim_create_autocmd('BufWritePre', {
    group = trim_whitespace_group,
    callback = trim_whitespace,
    desc = 'Remove trailing whitespace before saving'
})
