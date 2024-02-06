-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

local import_cmp, cmp = pcall(require, 'cmp')
if not import_cmp then return end

local import_luasnip, luasnip = pcall(require, 'luasnip')
if not import_luasnip then return end

cmp.setup({

    snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
    },

    formatting = {

        format = function(entry, vim_item)
            -- limit completion width
            local ELLIPSIS_CHAR = '…'
            local MAX_LABEL_WIDTH = 35
            local label = vim_item.abbr
            local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
            if truncated_label ~= label then
                vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
            end

            -- set a name for each source
            vim_item.menu = ({
                copilot = "[Copilot]",
                buffer = "[Buff]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })[entry.source.name]
            return vim_item
        end,
    },

    sources = {
        { name = "copilot",                group_index = 2 },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'luasnip' },
        { name = 'buffer',                 keyword_length = 2 },
    },

    window = {
        documentation = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        },
        completion = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        }
    },

    mapping = {
        ['<C-Space>'] = cmp.mapping.complete({}),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        }),

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),

    },
})
