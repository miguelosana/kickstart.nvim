return {
  'danymat/neogen',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = function(opts)
    require('neogen').setup(opts)
    local wk = require 'which-key'
    wk.register {
      N = {
        name = 'Neogen Docs',
        f = {
          function()
            require('neogen').generate()
          end,
          'Annotate current [f]unction',
        },
        c = {
          function()
            require('neogen').generate { type = 'class' }
          end,
          'Annotate [c]lass',
        },
        t = {
          function()
            require('neogen').generate { type = 'type' }
          end,
          'Annotate [t]ype',
        },
      },
    }
  end,
}
