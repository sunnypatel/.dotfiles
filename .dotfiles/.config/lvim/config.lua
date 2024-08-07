-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.builtin.telescope.defaults.layout_strategy = "ivy"
lvim.builtin.telescope.defaults.layout_config.width = 200
lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 120
lvim.builtin.telescope.defaults.path_display = { "absolute" }

lvim.format_on_save.enabled = true

lvim.plugins = {
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufRead",
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "aserowy/tmux.nvim",
    config = function()
      require("tmux").setup {
        navigation = {
          -- cycles to opposite pane while navigating into the border
          -- cycle_navigation = true,

          -- enables default keybindings (C-hjkl) for normal mode
          enable_default_keybindings = true,

          -- prevents unzoom tmux when navigating beyond vim border
          persist_zoom = true,
        },
        resize = {
          -- enables default keybindings (A-hjkl) for normal mode
          enable_default_keybindings = true,
        },
      }
    end,
  },
  {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
<<<<<<< Updated upstream
        auto_session_suppress_dirs = { "~/", "~/Documents", "~/Downloads", "/" },
        auto_save_enabled = true,
        auto_restore_enabled = true
=======
        auto_session_suppress_dirs = { vim.fn.expand("~"), "/tmp", "/" },
>>>>>>> Stashed changes
      }
    end
  },
}

-- Keybindings
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.keys.normal_mode["<C-b>"] = ":b#"

-- colorizer plugin for color highlighting
require 'colorizer'.setup()

lvim.builtin.treesitter.ensure_installed = {
  "typescript",
  "tsx",
  "javascript",
  "json",
  "lua",
  "yaml",
}

lvim.builtin.treesitter.highlight.enable = true

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "tsserver"
end, lvim.lsp.automatic_configuration.skipped_servers)

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettierd",
    filetypes = { "typescript", "typescriptreact", 'javascript', 'javascriptreact' },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
<<<<<<< Updated upstream
linters.setup {
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  -- {
  --   name = "proselint",
  -- },
}
=======
linters.setup {}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {}

lvim.builtin.alpha.active = false
lvim.builtin.terminal.active = false

vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*",
  callback = function()
    if vim.fn.getfsize(vim.fn.expand("%")) > 1024 * 1024 then
      vim.cmd("colorscheme default")
    end
  end,
})
>>>>>>> Stashed changes

-- Auto change to current directory
-- vim.opt.autochdir = true
