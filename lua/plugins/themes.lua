return {
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup {
        -- optional configuration here
      }
      require("bamboo").load()
    end,
  },
  { "ellisonleao/gruvbox.nvim",        priority = 1000 },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "kepano/flexoki-neovim",           name = "flexoki" },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd [[colorscheme aura-dark]]
    end,
  },
}
