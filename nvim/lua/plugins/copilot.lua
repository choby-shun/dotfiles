return {
  {
    "zbirenbaum/copilot.lua",
    opts = function(_, opts)
      local matches = vim.fn.glob(vim.fn.expand("~/.nvm/versions/node/v22.13*/bin/node"), false, true)
      if #matches > 0 then
        opts.copilot_node_command = matches[1]
      end
      return opts
    end,
  },
}
