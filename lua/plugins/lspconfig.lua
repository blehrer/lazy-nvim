local lsp = require("lspconfig")
return {
  {
    lsp.denols.setup({
      init_options = {
        lint = true,
      },
      root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
    }),
    lsp.sourcekit.setup({
      root_dir = lsp.util.root_pattern("Package.swift"),
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        },
      },
    }),
  },
}
