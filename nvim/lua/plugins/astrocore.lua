-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        timeoutlen = 200, -- sets vim.opt.timeoutlen; shorten delay time for which-key
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- disable astro home
        ["<Leader>h"] = false,

        -- navigate buffer tabs with `H` and `L`
        L = {
          desc = "Next buffer",
          function() require("astrocore.buffer").nav(vim.v.count1) end,
        },
        H = {
          desc = "Previous buffer",
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
        },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          desc = "Close buffer from tabline",
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

        -- Diffview
        ["<Leader>G"] = { desc = " Diffview" },
        ["<Leader>GG"] = {
          desc = "Panel",
          ":DiffviewOpen <CR>",
        },
        ["<Leader>Gh"] = {
          desc = "History File",
          ":DiffviewFileHistory % <CR>",
        },
        ["<Leader>GH"] = {
          desc = "History Project",
          ":DiffviewFileHistory <CR>",
        },
        ["<Leader>Gq"] = {
          desc = "Diffview close",
          ":DiffviewClose <CR>",
        },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
      v = {
        ["<Leader>j"] = {
          desc = "jq sort keys",
          ":!jq -S<CR>",
        },
      },
    },
  },
}
