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
}
