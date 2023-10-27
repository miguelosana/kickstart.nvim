-- Buffer line
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  keys = {
    { '<leader>bl', '<cmd>BufferLinePick<cr>', desc = '[B]uffer[L]inePick' },
    { '<leader>bc', '<cmd>BufferLinePickClose<cr>', desc = '[B]ufferLinePick[C]lose' },
  },
  config = function()
    require('bufferline').setup {
      options = {
        style_preset = 2,
        mode = 'buffers',

        separator_style = 'slant',
        diagnostics = 'nvim_lsp',
      },
    }
  end,
}
