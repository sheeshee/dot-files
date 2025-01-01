local function toggle_number()
    local number = vim.wo.number
    local relativenumber = vim.wo.relativenumber

    if not number and not relativenumber then
        -- State 1: Enable both number and relativenumber
        vim.wo.number = true
        vim.wo.relativenumber = true
    elseif number and relativenumber then
        -- State 2: Keep number, disable relativenumber
        vim.wo.number = true
        vim.wo.relativenumber = false
    elseif number and not relativenumber then
        -- State 3: Disable both
        vim.wo.number = false
        vim.wo.relativenumber = false
    end
end

return toggle_number

