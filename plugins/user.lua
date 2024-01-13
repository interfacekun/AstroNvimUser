return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "JuanZoran/Trans.nvim",
    build = function () require'Trans'.install() end,
    keys = {
    -- 可以换成其他你想映射的键
      { 'fy', mode = { 'n', 'x' }, '<Cmd>Translate<CR>', desc = ' Translate' },
      { 'fs', mode = { 'n', 'x' }, '<Cmd>TransPlay<CR>', desc = ' Auto Play' },
      -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
      { 'fi', '<Cmd>TranslateInput<CR>', desc = ' Translate From Input' },
      },
      dependencies = { 'kkharji/sqlite.lua', },
      opts = {
        -- your configuration there
      }
  },

  {
      'tomasky/bookmarks.nvim',
      -- after = "telescope.nvim",
      event = "VimEnter",
      config = function()
        require('bookmarks').setup {
            -- sign_priority = 8,  --set bookmark sign priority to cover other sign
            save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
            keywords =  {
              ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
              ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
              ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
              ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
            },
            on_attach = function(bufnr)
              local bm = require "bookmarks"
              local map = vim.keymap.set
              map("n","mm",bm.bookmark_toggle) -- add or remove bookmark at current line
              map("n","mi",bm.bookmark_ann) -- add or edit mark annotation at current line
              map("n","mc",bm.bookmark_clean) -- clean all marks in local buffer
              map("n","mn",bm.bookmark_next) -- jump to next mark in local buffer
              map("n","mp",bm.bookmark_prev) -- jump to previous mark in local buffer
              map("n","ml",bm.bookmark_list) -- show marked file list in quickfix window
            end
          }
      end
      },
      opts = {

    },
}
