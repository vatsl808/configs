local cmp = require("cmp")

cmp.setup({
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged },
  },

  snippet = {

    expand = function(args)

      require("luasnip").lsp_expand(args.body)

    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),

    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
})

