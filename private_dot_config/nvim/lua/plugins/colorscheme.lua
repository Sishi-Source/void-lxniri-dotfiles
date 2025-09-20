return {
  -- Using Lazy
  {
    "Sishi-Source/fluentround-dark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "dark", -- dark is fluentround-dark, anything else is still onedark
      })
      -- Enable theme
      require("onedark").load()
    end,
  },
}
