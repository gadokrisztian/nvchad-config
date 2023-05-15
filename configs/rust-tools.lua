local options = {
  server = {
    on_attach = require("plugins.configs.lspconfig").on_attach,
    capabilities = require("plugins.configs.lspconfig").capabilities,
  }

}

return options
