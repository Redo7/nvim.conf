-- Fix treesitter not starting svelte syntax highlighting
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "svelte" },
    callback = function(ev)
        vim.treesitter.start(ev.buf)
    end,
})
