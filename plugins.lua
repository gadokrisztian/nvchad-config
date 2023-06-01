local overrides = require("custom.configs.overrides")

local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require("custom.configs.null-ls")
      end
    },
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require("rust-tools")
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  },
    {
        "aserowy/tmux.nvim",
        lazy=false,
        config = function()
            return require("tmux").setup {
                navigation = {
                    enable_default_keybindings = false,
                }
            }
        end
    },
    {
        "github/copilot.vim",
        lazy = false,
        config = function ()
            vim.cmd [[
                imap <silent><script><expr> <C-Right> copilot#Accept("\<CR>")
                imap <silent> <C-Left> <Plug>(copilot-dismiss)
                imap <silent> <C-Up> <Plug>(copilot-next)
                imap <silent> <C-Down> <Plug>(copilot-previous)
                let g:copilot_no_tab_map = v:true
            ]]
        end
    }



}

return plugins
