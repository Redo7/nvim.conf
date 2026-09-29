local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'lua_ls', 'html', 'emmet_language_server', 'cssls', 'tailwindcss', 'ts_ls', 'jsonls', 'pyright', 'svelte', 'csharp_ls' }

for _, server in ipairs(servers) do
  vim.lsp.enable(server, { capabilities = capabilities })
end
