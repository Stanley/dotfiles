return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()  -- Add your config here
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
