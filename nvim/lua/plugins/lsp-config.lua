return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "cssls", "html", "jdtls", "ts_ls", "pylsp" ,"ltex", "rust_analyzer" , "ast_grep"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- various languages setups
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({
                cmd = { "clangd" },
                root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            })
            lspconfig.cssls.setup({})
            lspconfig.html.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.ast_grep.setup({})
            lspconfig.pylsp.setup({})
            -- maybe, maybe not
            --lspconfig.ltex.setup({})
            lspconfig.rust_analyzer.setup({})
            -- keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
