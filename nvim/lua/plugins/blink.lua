return {
  {
    "Exafunction/codeium.nvim",
    config = function()
      require("codeium").setup({})
    end,
  },

  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- ให้แน่ใจว่ามี sources table
      opts.sources = opts.sources or {}
      opts.sources.providers = opts.sources.providers or {}

      -- ✅ ตั้งค่า Codeium ให้ blink ใช้ compat source
      opts.sources.providers.codeium = {
        name = "codeium",
        module = "blink.compat.source",
      }

      -- เพิ่ม keymap ตามต้องการ
      opts.keymap = {
        preset = "none",
        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      }

      return opts
    end,
  },
}
