return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim",lazy = true,name = "gruvbox" },
    { "olimorris/onedarkpro.nvim",lazy = true,name = "onedarkpro"  },
    { "rose-pine/neovim" ,lazy = true,name = "neovim" },
    { "nyoom-engineering/oxocarbon.nvim" },
    { "projekt0n/github-nvim-theme" ,lazy = true,name = "github" },
    { 'embark-theme/vim', as = "embark",lazy = true,name = "embark" },
    { "folke/tokyonight.nvim", lazy = true,
        -- opts = { style = "moon" }, 
        opts = {
            style = "moon",
            -- transparent = true,
            -- styles = {
            --     sidebars = "transparent",
            --     floats = "transparent",
            -- },
        },
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            flavour = "macchiato", -- latte, frappe, macchiato, mocha
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "gruvbox",
            colorscheme = "catppuccin",
            -- colorscheme = "embark",
            -- colorscheme = "tokyonight",
            -- colorscheme = "neovim",
            -- colorscheme = "onedarkpro",
            -- colorscheme = "habamax",
            -- colorscheme = "oxocarbon",
        },
    }
}
