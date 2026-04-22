return {
  "nvim-telescope/telescope.nvim",

  -- 新增全局快捷键
  keys = {
    -- Space + f + I : 查找所有文件 (强行包含隐藏文件和被 .gitignore 忽略的文件)
    {
      "<leader>fI",
      "<cmd>Telescope find_files hidden=true no_ignore=true<cr>",
      desc = "Find Files (All Hidden/Ignored)",
    },

    -- Space + s + I : 全局文本搜索 (强行包含隐藏文件和被 .gitignore 忽略的文件)
    {
      "<leader>sI",
      "<cmd>Telescope live_grep additional_args={'--hidden','--no-ignore'}<cr>",
      desc = "Grep (All Hidden/Ignored)",
    },
  },

  -- 依然保留对默认底层 rg 的调优保护
  opts = {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden", -- 默认搜隐藏文件 (如 .env)
        "--glob=!.git/", -- 绝对禁止去搜 .git 目录防卡死
      },
    },
  },
}
