return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    },
    keys = {
           { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    },
  },
  --   config = function()
  --     require("leap").create_default_mappings()
  --   end,
  -- -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  		 "vim", "lua", "vimdoc",
       "html","dart", "css","go","rust",
       -- "gleam" 
       "typescript", "javascript", "svelte"
  		},
  	},
  }
}
