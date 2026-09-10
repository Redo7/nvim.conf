return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IblIndent", { fg = "#1d1f36" })
			vim.api.nvim_set_hl(0, "IblScope",  { fg = "#34315a" })
		end)

		require("ibl").setup({
			indent = {
				highlight = "IblIndent",
			},
			scope = {
				highlight = "IblScope",
			},
		})
	end,
}
