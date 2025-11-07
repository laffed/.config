-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  { import = "astrocommunity.motion.grapple-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.programming-language-support.nvim-jqx" },
  -- No LSP inlay in insert mode
  -- { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- LSP Defaults
  { import = "astrocommunity.pack.lua" },
}
