require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pylsp", "texlab", "ltex", "clangd", "dartls" }

vim.lsp.config.ltex = {
  on_attach = function(client, bufnr)
    require("ltex_extra").setup {
      load_langs = { "de-DE" },
      path = vim.fn.expand "~/.ltex", -- Speicherort für globale Wörter
    }
  end,
    settings = {
        ltex = {
            language = "de-DE"
        },
    },
}

vim.lsp.enable(servers)


-- read :h vim.lsp.config for changing options of lsp servers 
