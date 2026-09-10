return {
    dir = vim.fn.stdpath("config") .. "/lua/plugins/redo",
    config = function()
        require("plugins.redo.autocmd")
        require("plugins.redo.remap")
        require("plugins.redo.set")
    end
}
