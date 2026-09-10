local cmp = require('cmp')

cmp.setup({
    sources = cmp.config.sources({
        { name = "nvim-px-to-rem" },
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }),
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    }),
    window = {
        completion = cmp.config.window.bordered({
            max_height = 10,
        })
    }
})
