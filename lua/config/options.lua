-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.layervim_auto_update = 0


-- local opt = vim.opt

vim.opt.autowrite = true -- Enable auto write
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
vim.opt.completeopt = "menu,menuone,noselect"
--vim.opt.conceallevel = 3 -- Hide * markup for bold and italic
vim.opt.conceallevel = 0 -- Hide * markup for bold and italic
vim.opt.confirm = true -- Confirm to save changes before exiting modified buffer
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.formatoptions = "jcroqlnt" -- tcqj
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true -- Ignore case
vim.opt.inccommand = "nosplit" -- preview incremental substitute
vim.opt.laststatus = 0
vim.opt.list = true -- Show some invisible characters (tabs...
vim.opt.listchars = { space = "·" }
vim.opt.mouse = "a" -- Enable mouse mode
vim.opt.number = true -- Print line number
vim.opt.pumblend = 10 -- Popup blend
vim.opt.pumheight = 10 -- Maximum number of entries in a popup
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.scrolloff = 4 -- Lines of context
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
vim.opt.shiftround = true -- Round indent
vim.opt.shiftwidth = 4 -- Size of an indent
vim.opt.shortmess:append({ W = true, I = true, c = true })
vim.opt.showmode = false -- Dont show mode since we have a statusline
vim.opt.sidescrolloff = 8 -- Columns of context
vim.opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.opt.smartcase = true -- Don't ignore case with capitals
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.spelllang = { "en" }
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.termguicolors = true -- True color support
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200 -- Save swap file and trigger CursorHold
vim.opt.wildmode = "longest:full,full" -- Command-line completion mode
vim.opt.winminwidth = 5 -- Minimum window width
vim.opt.wrap = false -- Disable line wrap
vim.opt.wrap = true -- Enable line wrap
vim.opt.wrap = true
vim.opt.encoding = "UTF-8"
vim.opt.fileencodings=ucsbom,utf8,cp936,gbk,gb18030,big5,eucjp,euckr,latin1
vim.opt.showtabline = 1
vim.o.incsearch = true

vim.opt.background = "dark" -- set this to dark or light

if vim.fn.has("nvim-0.9.0") == 1 then
  vim.opt.splitkeep = "screen"
  vim.opt.shortmess:append({ C = true })
end

vim.g.markdown_recommended_style = 0
-- Fix markdown indentation settings
-- vim.guifont = "Inconsolata for Powerline:h14" -- text below applies for VimScript
vim.o.guifont = "Inconsolata for Powerline:h14" -- text below applies for VimScript


-- Neovide Setting
-- if vim.g.neovide then
--   -- vim.o.guifont = "Source Code Pro:h14" -- text below applies for VimScript
--   -- vim.o.guifont = "Inconsolata for Powerline:h12.5" -- text below applies for VimScript
--   -- vim.opt.linespace = 0
--   -- vim.g.neovide_scale_factor = 1.0
--   -- vim.g.neovide_padding_top = 60
--   vim.g.neovide_padding_top = 50 
--   vim.g.neovide_padding_bottom = 20
--   vim.g.neovide_padding_right = 20
--   vim.g.neovide_padding_left = 20

--   -- Background color
--   local alpha = function()
--     return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
--   end
--   -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
--   -- vim.g.neovide_transparency = 0.0
--   -- vim.g.transparency = 0.9
--   -- vim.g.neovide_background_color = "#0f1117" .. alpha()

--   -- Transparency
--   -- vim.g.neovide_transparency = 0.9
--   vim.g.neovide_transparency = 0.9
--   vim.g.transparency = 0.8 

--   vim.g.neovide_scroll_animation_length = 0.8

--   vim.g.neovide_hide_mouse_when_typing = false
--   vim.g.neovide_underline_automatic_scaling = false
--   vim.g.neovide_refresh_rate = 60
--   vim.g.neovide_refresh_rate_idle = 5
--   vim.g.neovide_no_idle = true
--   vim.g.neovide_confirm_quit = true
--   vim.g.neovide_fullscreen = false
--   vim.g.neovide_remember_window_size = true
--   vim.g.neovide_profiler = false
--   -- vim.g.neovide_input_use_logo = false
--   -- Deprecated vim.g.neovide_input_macos_alt_is_meta = true
--   vim.g.neovide_input_macos_option_key_is_meta = true
--   vim.g.neovide_touch_deadzone = 6.0
--   vim.g.neovide_touch_drag_timeout = 0.17
--   vim.g.neovide_cursor_animation_length = 0.13
--   vim.g.neovide_cursor_trail_size = 0.8
--   vim.g.neovide_cursor_antialiasing = true
--   vim.g.neovide_cursor_animate_in_insert_mode = true
--   vim.g.neovide_cursor_animate_command_line = true
--   vim.g.neovide_cursor_unfocused_outline_width = 0.125
--   -- railgun, torpedo, pixiedust,sonicboom, ripple, wireframe
--   vim.g.neovide_cursor_vfx_mode = "ripple" -- torpedo, pixiedust,sonicboom, ripple, wireframe
--   vim.g.neovide_cursor_vfx_opacity = 200.0
--   -- vim.g.neovide_cursor_vfx_opacity = 0.0
--   vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
--   -- vim.g.neovide_cursor_vfx_particle_lifetime = 0.0
--   vim.g.neovide_cursor_vfx_particle_density = 7.0
--   vim.g.neovide_cursor_vfx_particle_speed = 10.0
--   vim.g.neovide_cursor_vfx_particle_phase = 1.5
--   vim.g.neovide_cursor_vfx_particle_curl = 1.0
-- end
