return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  -- keys = {
  -- 	{ "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  --
  -- },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'float',
      },
    }
  end,
}
