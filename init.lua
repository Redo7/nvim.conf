package.path = vim.fn.stdpath('config') .. '/?.lua;' ..
              vim.fn.stdpath('config') .. '/?/init.lua;' ..
              package.path

require("config.lazy")
require("plugins.redo")
require("lsp")
require("config.cmp")
