return {
  {
    "choby-shun/strudel.nvim",

    build = "npm ci",
    lazy = false, -- README warns lazy-loading can break filetype support
    config = function()
      require("strudel").setup({
        -- defaults are fine; customize if you want:
        -- update_on_save = true,
        -- headless = true,
      })
    end,
    keys = {
      { "<leader>ml", "<cmd>StrudelLaunch<cr>", desc = "Strudel: Launch" },
      { "<leader>mt", "<cmd>StrudelToggle<cr>", desc = "Strudel: Play/Stop" },
      { "<leader>mu", "<cmd>StrudelUpdate<cr>", desc = "Strudel: Update" },
      { "<leader>mq", "<cmd>StrudelQuit<cr>", desc = "Strudel: Quit" },
    },
  },
}

