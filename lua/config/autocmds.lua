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
-- -- Disable autoformat for lua files
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     -- pattern = { "lua", "sql" },
--     pattern = { "*" },
--     callback = function()
--         vim.b.autoformat = false
--     end,
-- })

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*",
--     callback = function()
--         vim.lsp.buf.format({ async = false })
--     end,
-- })

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     -- pattern = "*",
--     buffer = buffer,
--     callback = function()
--         vim.lsp.buf.format { async = false }
--     end
-- })

-- customm command
-- vim.api.nvim_create_user_command('Json', ':set filetype=json', { nargs = 1 })
vim.api.nvim_create_user_command("Json", ":set filetype=json", { nargs = 0 })
-- vim.api.nvim_create_user_command("Xml", ":set filetype=xml | :1,$s/></>\r/g", { nargs = 0 })
vim.api.nvim_create_user_command("Xml", ":set filetype=xml", { nargs = 0 })
vim.api.nvim_create_user_command("Java", ":set filetype=java", { nargs = 0 })
vim.api.nvim_create_user_command("Sql", ":set filetype=sql", { nargs = 0 })
vim.api.nvim_create_user_command("Md", ":set filetype=markdown", { nargs = 0 })
vim.api.nvim_create_user_command("Clash", ":tabnew ~/.config/clash.meta/config.yaml", { nargs = 0 })
vim.api.nvim_create_user_command("Auto", ":tabnew ~/.config/nvim/lua/config/autocmds.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Opt", ":tabnew ~/.config/nvim/lua/config/options.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Key", ":tabnew ~/.config/nvim/lua/config/keymaps.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Plugin", ":tabnew ~/.config/nvim/lua/plugins/customized.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Color", ":tabnew ~/.config/nvim/lua/plugins/colorscheme.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Theme", ":tabnew ~/.config/nvim/lua/plugins/colorscheme.lua", { nargs = 0 })
vim.api.nvim_create_user_command("Init", ":tabnew ~/.config/nvim/init.lua", { nargs = 0 })

-- 自动命令在光标停留一段时间后高亮显示光标下的词
-- local highlight_group = vim.api.nvim_create_augroup('HighlightWordUnderCursor', { clear = true })

-- vim.api.nvim_create_augroup('HighlightWordUnderCursor', { clear = true })

-- 自动命令在光标停留一段时间后高亮显示光标下的词
vim.api.nvim_create_autocmd('CursorHold', {
  group = highlight_group,
  pattern = '*',
  callback = function()
    vim.fn.matchadd('Search', '\\<' .. vim.fn.expand('<cword>') .. '\\>')
  end,
})

-- 自动命令在光标移动后清除高亮
vim.api.nvim_create_autocmd('CursorMoved', {
  group = highlight_group,
  pattern = '*',
  callback = function()
    vim.fn.clearmatches()
  end,
})

-- 映射键来搜索当前光标下的词，但不移动光标
vim.api.nvim_set_keymap(
    "n",
    "<leader>*",
    [[:let @/ = '\<'.expand('<cword>').'\>'<CR>]],
    { noremap = true, silent = true }
)

-- If you want to use "~", you need to prefix the vault path with vim.fn.expand "~"
local vault_location = "/Users/alawn/Work/obsidian/Alawn" -- <PATH_TO_VAULT> .. "/**.md"
local group = vim.api.nvim_create_augroup("obsidian_cmds", { clear = true })
vim.api.nvim_create_autocmd("BufAdd", {
  command = "ObsidianOpen",
  pattern = { vault_location },
  group = group,
  desc = "Opens the current buffer in Obsidian",
})

-- vim.cmd([[
-- cnoreabbrev <expr> q getcmdtype() == ':' && getcmdline() == 'q' ? 'bd' : 'q'
-- ]])
--
