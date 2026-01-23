return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    dependencies = { 'moonbit-community/moonbit.nvim' },
    main = 'nvim-treesitter',
    opts = {
      install_dir = vim.fn.stdpath 'data' .. '/site',
    },
  },
}
