require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pylsp", "texlab", "ltex", "clangd", "dartls" }

vim.lsp.config.ltex = {
    settings = {
        ltex = {
            language = "de-DE"
        },
    },
}

vim.lsp.enable(servers)


-- read :h vim.lsp.config for changing options of lsp servers 
