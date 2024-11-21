return {
    -- {
    --     "iamcco/markdown-preview.nvim",
    --     run = "cd app && yarn install",
    --     config = function()
    --         -- 插件的配置
    --         vim.g.mkdp_browser = 'Safari'  -- 使用 'chrome' 或其他浏览器的名称
    --     end,
    -- },
    { "sindrets/diffview.nvim" }, -- git diff view
    {
        "RRethy/vim-illuminate",
        enabled = true,
        config = function()
            require('illuminate').configure {
                delay = 100,             -- 光标停留多久后高亮显示
                filetypes_denylist = {}, -- 禁用插件的文件类型
                under_cursor = true,     -- 也高亮光标下的词
            }
        end
    },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "echasnovski/mini.pairs", enabled = false },
    { "sainnhe/edge" }, -- Clean & Elegant Color Scheme inspired by Atom One and Material
    { "echasnovski/mini.align", version = "*" },
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup {
                options = {
                    mode = "tabs",                   -- 只显示标签页
                    numbers = "ordinal",             -- "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
                    separator_style = "slant",       -- 选择标签页之间的分隔符样式 "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
                    close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
                    always_show_bufferline = false,  -- 如果没有打开的标签页则隐藏标签栏
                    show_buffer_close_icons = false, -- 隐藏缓冲区关闭图标
                    show_close_icon = false,         -- 隐藏关闭图标
                    show_tab_indicators = false,     -- 显示标签页指示器
                    enforce_regular_tabs = true,     -- 强制所有标签页具有相同宽度
                    show_buffer_icons = true,        -- disable filetype icons for buffers
                    show_duplicate_prefix = true,   -- whether to show duplicate buffer prefix
                    themable = true,
                    -- duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
                }
            }
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        keys = function()
            return {}
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-emoji",
        },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and
                    vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local luasnip = require("luasnip")
            local cmp = require("cmp")

            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                -- ["<Tab>"] = cmp.mapping(function(fallback)
                ["<C-n>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                        -- they way you will only jump inside the snippet region
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                -- ["<S-Tab>"] = cmp.mapping(function(fallback)
                ["<C-p>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ['<D-j>'] = cmp.mapping.complete(),
            })
        end,
    },
    -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
    { import = "lazyvim.plugins.extras.lang.typescript" },

    -- add more treesitter parsers
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "yaml",
            },
        },
    },
    -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
    -- would overwrite `ensure_installed` with the new value.
    -- If you'd rather extend the default config, use the code below instead:
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            -- add tsx and treesitter
            vim.list_extend(opts.ensure_installed, {
                "tsx",
                "typescript",
                "java",
                "xml",
                "sql",
                "bash",
                "vue",
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            autoformat = false,
        },
    },
}
