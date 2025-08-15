
---@type LazySpec
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "kristijanhusak/vim-dadbod-completion", -- เพื่อ autocomplete SQL
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- 🔁 Merge sources เดิม + vim-dadbod-completion
    opts.sources = vim.tbl_extend("force", opts.sources or {}, {
      { name = "vim-dadbod-completion" },
    })

    -- 🔁 เพิ่ม key mapping ยืนยัน autocomplete
    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    })
  end,
}

