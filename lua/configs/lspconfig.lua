-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "pyright"}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.rust_analyzer.setup({
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  on_init = nvlsp.on_init,
  filetypes = {"rust"},
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      },
    },

  },
})

lspconfig.tsserver.setup({
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  n_init = nvlsp.on_init,
})
