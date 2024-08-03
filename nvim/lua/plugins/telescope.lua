return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {
      pickers = {
        find_files = {
          hidden = true,
          find_command = {
            'fd',
            '--type', 'f',
            '--hidden',
            '--exclude', 'Music',
            '--exclude', '.local',
            '--exclude', '.nv',
            '--exclude', '.npm',
            '--exclude', '.nix-defexpr',
            '--exclude', '.mozilla',
            '--exclude', '.cache',
            '--exclude', 'Downloads'
          },
        }
      }
    }

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<C-f>', builtin.oldfiles, {})
  end
}
