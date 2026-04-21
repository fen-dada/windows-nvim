return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.icons', -- 或者使用 'nvim-tree/nvim-web-devicons'
  },
  ---@module 'render-markdown'
  ---@type render_markdown.Config
  opts = {
    -- 开启实时渲染
    enabled = true,
    -- 排除特定的文件类型
    exclude = {
      buftypes = { 'terminal' },
    },
    -- 标题设置：让它看起来像富文本标题
    heading = {
      enabled = true,
      sign = true,
      position = 'overlay',
      icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
      -- 标题的背景高亮色级，会根据你的主题自动适配
      backgrounds = {
        'RenderMarkdownH1Bg',
        'RenderMarkdownH2Bg',
        'RenderMarkdownH3Bg',
        'RenderMarkdownH4Bg',
        'RenderMarkdownH5Bg',
        'RenderMarkdownH6Bg',
      },
    },
    -- 代码块：这在你写 Rust/C++ 笔记时非常有用
    code = {
      enabled = true,
      sign = false,
      style = 'full', -- 'full' 会给整个代码块加背景色
      position = 'left', -- 语言图标显示在左边
      width = 'block', -- 背景宽度跟随代码块最长行
      left_pad = 2,
      right_pad = 2,
    },
    -- 表格：自动把 | - | 变成精美的实线表格
    table = {
      enabled = true,
      style = 'full', -- 可选 'full', 'header', 'none'
      cell = 'padded', -- 单元格内边距
    },
    -- 复选框：非常适合做你的 ACM 刷题打卡单
    checkbox = {
      enabled = true,
      unchecked = { icon = '󰄱 ' },
      checked = { icon = '󰄵 ' },
      custom = {
        todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
      },
    },
    -- 链接
    link = {
      enabled = true,
      image = '󰥶 ',
      email = '󰂓 ',
    },
  },
}
