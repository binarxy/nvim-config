return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- {
  --   "andweeb/presence.nvim",
  --   config = function()
  --     require('presence'):setup({
  --       auto_update = true,
  --       neovim_image_text = "The one True Text Editor",
  --       main_image = "file",
  --       log_level = "debug",
  --       debounce_timeout = 10,
  --       enable_line_number = true,
  --       blacklist = {},
  --
  --       editing_text = "Editing %s",
  --       file_explorer_text = "Browsing &s",
  --       git_commit_text = "Comitting changes",
  --       plugin_manager_text = "Managing plugins",
  --       reading_text = "Reading %s",
  --       workspace_text = "Working on %s",
  --       line_number_text = "Line %s out of %s",
  --     })
  --   end
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
