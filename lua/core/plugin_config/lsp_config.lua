require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "html", "cssls", "tailwindcss", "emmet_ls", "jsonls", "graphql",
                             "tsserver", "marksman", "pylsp", "rust_analyzer", "bashls" 
                           },
    }
)

-- stuff from completions.lua

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("lspconfig").pylsp.setup {
    capabilities = capabilities
}

require("lspconfig").lua_ls.setup {
    capabilities = capabilities
}

require("lspconfig").tsserver.setup {
    capabilities = capabilities
}

require("lspconfig").rust_analyzer.setup {
    capabilities = capabilities
}

require("lspconfig").emmet_ls.setup {
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
}
