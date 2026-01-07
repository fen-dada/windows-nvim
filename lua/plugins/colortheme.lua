return {
  'folke/tokyonight.nvim',
  lazy = false, -- ⭐ 关键：不要延迟加载
  priority = 1000, -- ⭐ 关键：最先加载主题
  config = function()
    require('tokyonight').setup {
      style = 'moon', -- night / storm / moon / day
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    }

    vim.cmd 'colorscheme tokyonight'
  end,
}
