local mapping = require "plugins.config.cmp.mappings"
local cmp = require "cmp"

cmp.setup {
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = mapping,
    sources = {
        { name = "path" },
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "latex_symbols" },
        { name = "buffer", keyword_length = 5 },
    },
    completion = { completeopt = "menu,menuone,noinsert" },
    experimental = {
        native_menu = false,
    },
}

require("luasnip/loaders/from_vscode").lazy_load()
