return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = 'Format Buffer',
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'yapf' },
      javascript = { 'prettier' },
      go = { 'gofmt' },
      svelte = { 'prettier' },
    },
    format_on_save = { timeout_ms = 3000, lsp_fallback = false },
  },
}
