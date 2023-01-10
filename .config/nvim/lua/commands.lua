-- Google specific commands
local ok, google = pcall(require, 'google')
if ok then
    -- CS
    vim.api.nvim_create_user_command('Cs', google.cs_query(), {})
    vim.api.nvim_create_user_command('Cse', google.cs_query_exp(), {})
    vim.api.nvim_create_user_command('Cf', google.cs_file(), {})
    vim.api.nvim_create_user_command('Cfe', google.cs_file_exp(), {})

    -- Workspaces
    vim.api.nvim_create_user_command('Ws', google.pick_ws(), {})
end



