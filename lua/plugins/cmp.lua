require("blink.cmp").setup({
    signature = { enabled = true },
    keymap = {
        preset = "enter",
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<C-p>'] = { 'snippet_backward', 'fallback_to_mappings' },
        ['<C-n>'] = { 'snippet_forward', 'fallback_to_mappings' },
    },
    completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 0 },
        menu = {
            draw = {
                treesitter = { 'lsp' },
                columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },
                components = {
                    kind_icon = {
                        text = function(ctx)
                            local kind_icon, _, _ = require('mini.icons').get('lsp', ctx
                                .kind)
                            return kind_icon
                        end,
                        -- (optional) use highlights from mini.icons
                        highlight = function(ctx)
                            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                            return hl
                        end,
                    },
                    kind = {
                        -- (optional) use highlights from mini.icons
                        highlight = function(ctx)
                            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                            return hl
                        end,
                    }
                }
            }
        }
    },
})
