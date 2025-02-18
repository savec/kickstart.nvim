return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      {
        '<leader>g',
        function()
          local Terminal = require('toggleterm.terminal').Terminal
          local lazygit = Terminal:new {
            cmd = 'lazygit',
            hidden = true,
            direction = 'float',
            float_opts = {
              border = 'curved',
            },
          }
          lazygit:toggle()
        end,
        { noremap = true, silent = true },
        desc = 'Open lazygit console',
      },
      { '<leader>\\', '<cmd>ToggleTerm<cr>', desc = 'Open a terminal' },
    },
    opts = {
      size = vim.o.columns * 0.35,
      direction = 'vertical',
      shell = (function()
        if vim.fn.has 'win32' == 1 then
          return 'powershell'
        end
        return vim.o.shell
      end)(),
      shade_terminals = true,
      shading_factor = -10,
    },
  },
}
