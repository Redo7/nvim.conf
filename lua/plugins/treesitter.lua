return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    init = function()
        vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/runtime")
    end,
    opts = {
        ensure_installed = { 'lua', 'vim', 'html', 'css', 'javascript', 'typescript', 'json', 'python', 'svelte', 'c#' },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { "svelte" },
        },
        indent = { enable = true },
    }
}
