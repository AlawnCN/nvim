-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- 将宏保存到变量中
vim.api.nvim_set_var("my_macro", vim.fn.getreg("a"))

-- 将变量中的宏写入寄存器
vim.fn.setreg("a", vim.api.nvim_get_var("my_macro"))

-- function align_text()
--     vim.api.nvim_command("normal! 0gUwjj")  -- 将选区内的文本转换为大写
-- end

-- :lua align_text()

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- customm command
-- vim.api.nvim_create_user_command('Json', ':set filetype=json', { nargs = 1 })
vim.api.nvim_create_user_command('Json', ':set filetype=json', { nargs = 0 })
vim.api.nvim_create_user_command('Xml', ':set filetype=xml', { nargs = 0 })
vim.api.nvim_create_user_command('Java', ':set filetype=java', { nargs = 0 })
vim.api.nvim_create_user_command('Sql', ':set filetype=sql', { nargs = 0 })
vim.api.nvim_create_user_command('Auto',':tabnew ~/.config/nvim/lua/config/autocmds.lua', { nargs = 0 })
vim.api.nvim_create_user_command('Opt', ':tabnew ~/.config/nvim/lua/config/options.lua', { nargs = 0 })
vim.api.nvim_create_user_command('Key', ':tabnew ~/.config/nvim/lua/config/keymaps.lua', { nargs = 0 })
vim.api.nvim_create_user_command('Plugin',':tabnew ~/.config/nvim/lua/plugins/', { nargs = 0 })
vim.api.nvim_create_user_command('Init',':tabnew ~/.config/nvim/init.lua', { nargs = 0 })
-- vim.cmd([[
-- cnoreabbrev <expr> q getcmdtype() == ':' && getcmdline() == 'q' ? 'bd' : 'q'
-- ]])

