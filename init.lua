if vim.g.vscode then
    -- Vscode extension
else
    -- bootstrap lazy.vim, LazyVim and your plugins
    -- require("config.lazy")
    -- require("mini.align").setup()
    require("config.lazy")
end




if vim.g.neovide then
    --    -- Put anything you want to happen only in Neovide here
    --    --
    --    -- Neovide Setting
    -- vim.o.guifont = "Source Code Pro:h14" -- text below applies for VimScript
    -- vim.o.guifont = "Inconsolata for Powerline:h12.5" -- text below applies for VimScript
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_text_gamma = 0.0
    vim.g.neovide_text_contrast = 0.5
    vim.opt.linespace = 0
    vim.g.neovide_padding_top = 10
    vim.g.neovide_padding_bottom = 5
    vim.g.neovide_padding_right = 5
    vim.g.neovide_padding_left = 5


    --    -- Background color
    -- local alpha = function()
    --     return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    -- end
    -- vim.g.neovide_transparency = 0.8 
    -- vim.g.transparency = 0.8
    -- vim.g.neovide_background_color = "#0f1117" .. alpha()

    --    -- Transparency
    vim.g.neovide_transparency = 0.95
    -- vim.g.neovide_window_blurred = true

    --
    -- vim.g.neovide_floating_blur_amount_x = 2.0
    -- vim.g.neovide_floating_blur_amount_y = 2.0
    -- vim.g.neovide_floating_shadow = true
    -- vim.g.neovide_floating_z_height = 10
    -- vim.g.neovide_light_angle_degrees = 45
    -- vim.g.neovide_light_radius = 5
    -- vim.g.neovide_show_border = true
    vim.g.neovide_show_border = false 
    vim.g.neovide_position_animation_length = 0.15
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_scroll_animation_far_lines = 1
    vim.g.neovide_hide_mouse_when_typing = false
    vim.g.neovide_underline_stroke_scale = 1.0

    -- Theme
    vim.g.neovide_theme = 'dark'
    -- vim.g.neovide_theme = 'drak'
    -- vim.g.experimental_layer_grouping = false
    -- vim.g.experimental_layer_grouping = true

    -- Functionality 
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5
    vim.g.neovide_no_idle = true
    vim.g.neovide_confirm_quit = true
    -- Possible values are always_quit, always_detach, or prompt. Set to prompt by default.
    vim.g.neovide_detach_on_quit = 'always_quit'  

    -- vim.g.neovide_fullscreen = true
    vim.g.neovide_fullscreen = false
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_profiler = false
    -- Possible values are both, only_left, only_right, none. Set to none by default.
    vim.g.neovide_input_macos_option_key_is_meta = 'only_left'

    -- IME
    vim.g.neovide_input_ime = true

    vim.g.neovide_touch_deadzone = 6.0
    vim.g.neovide_touch_drag_timeout = 0.17
    vim.g.neovide_cursor_animation_length = 0.13
    vim.g.neovide_cursor_trail_size = 0.8
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_unfocused_outline_width = 0.125
    vim.g.neovide_cursor_smooth_blink = false
    -- railgun, torpedo, pixiedust,sonicboom, ripple, wireframe
    vim.g.neovide_cursor_vfx_mode = "ripple" -- torpedo, pixiedust,sonicboom, ripple, wireframe
    vim.g.neovide_cursor_vfx_opacity = 200.0
    -- vim.g.neovide_cursor_vfx_opacity = 0.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
    -- vim.g.neovide_cursor_vfx_particle_lifetime = 0.0
    vim.g.neovide_cursor_vfx_particle_density = 7.0
    vim.g.neovide_cursor_vfx_particle_speed = 10.0
    vim.g.neovide_cursor_vfx_particle_phase = 1.5
    vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
