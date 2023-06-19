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
