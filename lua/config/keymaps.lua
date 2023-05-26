-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
--local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Next Tab
map("n", "<D-l>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
--
-- Previous Tab
map("n", "<D-h>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
--
-- New Tab
map("n", "<D-t>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("i", "<D-t>", "<esc><cmd>tabnew<cr>", { desc = "New Tab" })

-- [Quick move cross rows]
map("n", "<C-j>", "4j", { desc = "Move down 4 rows" })
map("n", "<C-k>", "4k", { desc = "Move up 4 rows" })
map("v", "<C-j>", "4j", { desc = "Move down 4 rows" })
map("v", "<C-k>", "4k", { desc = "Move up 4 rows" })

-- Switch Tab [1~9]
map("i", "<D-1>", "<ESC><cmd>tabnext 1<CR>i", { desc = "Switch to tab 1" })
map("i", "<D-2>", "<ESC><cmd>tabnext 2<CR>i", { desc = "Switch to tab 2" })
map("i", "<D-3>", "<ESC><cmd>tabnext 3<CR>i", { desc = "Switch to tab 3" })
map("i", "<D-4>", "<ESC><cmd>tabnext 4<CR>i", { desc = "Switch to tab 4" })
map("i", "<D-5>", "<ESC><cmd>tabnext 5<CR>i", { desc = "Switch to tab 5" })
map("i", "<D-6>", "<ESC><cmd>tabnext 6<CR>i", { desc = "Switch to tab 6" })
map("i", "<D-7>", "<ESC><cmd>tabnext 7<CR>i", { desc = "Switch to tab 7" })
map("i", "<D-8>", "<ESC><cmd>tabnext 8<CR>i", { desc = "Switch to tab 8" })
map("i", "<D-9>", "<ESC><cmd>tabnext 9<CR>i", { desc = "Switch to tab 9" })

map("n", "<D-1>", "<CMD>tabnext 1<CR>", { desc = "Switch to tab 1" })
map("n", "<D-2>", "<CMD>tabnext 2<CR>", { desc = "Switch to tab 2" })
map("n", "<D-3>", "<CMD>tabnext 3<CR>", { desc = "Switch to tab 3" })
map("n", "<D-4>", "<CMD>tabnext 4<CR>", { desc = "Switch to tab 4" })
map("n", "<D-5>", "<CMD>tabnext 5<CR>", { desc = "Switch to tab 5" })
map("n", "<D-6>", "<CMD>tabnext 6<CR>", { desc = "Switch to tab 6" })
map("n", "<D-7>", "<CMD>tabnext 7<CR>", { desc = "Switch to tab 7" })
map("n", "<D-8>", "<CMD>tabnext 8<CR>", { desc = "Switch to tab 8" })
map("n", "<D-9>", "<CMD>tabnext 9<CR>", { desc = "Switch to tab 9" })

-- Close Tab
map("n", "<D-w>", "<CMD>tabclose<CR>", { desc = "Close tab" })
map("i", "<D-w>", "<ESC><CMD>tabclose<CR>", { desc = "Close tab" })

-- Align Table
map("n", "<D-e>", "gaip|<CR>", { desc = "Align table" })

-- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
-- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
-- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
-- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

---- better up/down
---- map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
---- map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

---- Move to window using the <ctrl> hjkl keys
---- map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
---- map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
---- map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
---- map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

---- Resize window using <ctrl> arrow keys
--map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
--map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
--map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
--map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

---- Move Lines
--map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
--map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
--map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
--map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
--map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
--map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

---- buffers
--if Util.has("bufferline.nvim") then
--  map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
--  map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
--  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
--  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
--else
--  map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
--  map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
--  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
--  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
--end
--map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
--map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

---- Clear search with <esc>
--map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

---- Clear search, diff update and redraw
---- taken from runtime/lua/_editor.lua
--map(
--  "n",
--  "<leader>ur",
--  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
--  { desc = "Redraw / clear hlsearch / diff update" }
--)

--map({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

---- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
--map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
--map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
--map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
--map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
--map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
--map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

---- Add undo break-points
--map("i", ",", ",<c-g>u")
--map("i", ".", ".<c-g>u")
--map("i", ";", ";<c-g>u")

---- save file
--map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

---- better indenting
--map("v", "<", "<gv")
--map("v", ">", ">gv")

---- lazy
--map("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })

---- new file
--map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

--map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
--map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

--if not Util.has("trouble.nvim") then
--  map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
--  map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
--end

---- stylua: ignore start

---- toggle options
--map("n", "<leader>uf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })
--map("n", "<leader>us", function() Util.toggle("spell") end, { desc = "Toggle Spelling" })
--map("n", "<leader>uw", function() Util.toggle("wrap") end, { desc = "Toggle Word Wrap" })
--map("n", "<leader>ul", function() Util.toggle("relativenumber", true) Util.toggle("number") end, { desc = "Toggle Line Numbers" })
--map("n", "<leader>ud", Util.toggle_diagnostics, { desc = "Toggle Diagnostics" })
--local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
--map("n", "<leader>uc", function() Util.toggle("conceallevel", false, {0, conceallevel}) end, { desc = "Toggle Conceal" })

---- lazygit
--map("n", "<leader>gg", function() Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false }) end, { desc = "Lazygit (root dir)" })
--map("n", "<leader>gG", function() Util.float_term({ "lazygit" }, {esc_esc = false}) end, { desc = "Lazygit (cwd)" })

---- quit
--map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

---- highlights under cursor
--if vim.fn.has("nvim-0.9.0") == 1 then
--  map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
--end

---- floating terminal
--map("n", "<leader>ft", function() Util.float_term(nil, { cwd = Util.get_root() }) end, { desc = "Terminal (root dir)" })
--map("n", "<leader>fT", function() Util.float_term() end, { desc = "Terminal (cwd)" })
--map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

---- windows
--map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
--map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
--map("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
--map("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
--map("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
--map("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

---- tabs
--map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
--map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
--map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
--map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
--map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
--map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
----
