return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = opts.spec or {}
      table.insert(opts.spec, { "<leader>m", group = "Strudel", icon = { icon = "󰎈", color = "yellow" } })
    end,
  },
}
