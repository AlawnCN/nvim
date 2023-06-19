if vim.g.vscode then
  -- Vscode extension
else
  -- bootstrap lazy.vim, LazyVim and your plugins
  require("config.lazy")
  require("mini.align").setup()
end
