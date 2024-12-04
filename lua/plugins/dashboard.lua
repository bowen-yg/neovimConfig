return{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
  require('dashboard').setup{
      -- config
      theme='doom',
      config = {
      week_header={enable=true},
  center = {
    {
      icon = '󰱼',
      desc = ' Find File',
      key = 'SPACE f f',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '󱎸',
      desc = ' Find Grep',
      key = 'SPACE f g',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '',
      desc = ' Nvim Tree',
      key = 'SPACE e',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '',
      desc = ' ColorScheme',
      key = 'SPACE c s',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '󱋡',
      desc = ' history files',
      key = 'SPACE f h',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
  },
}}
  end,
  dependencies = {{'nvim-tree/nvim-web-devicons'}}
}
