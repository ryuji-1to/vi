return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
        italic_comment = true, -- コメントをイタリックにする
        transparent_bg = true, -- 背景を透明にしない
      })
      vim.cmd.colorscheme("dracula")
      -- Telescope のウィンドウも透明にする
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
      -- 透明化の設定
    end,
  },
}
