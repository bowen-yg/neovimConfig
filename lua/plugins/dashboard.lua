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
      icon = '󰈞',
      --icon_hl = '',
      desc = ' Find File',
      --desc_hl = 'group',
      key = 'SPACE f f',
      --key_hl = '',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '󰊄',
      --icon_hl = '',
      desc = ' Find Grep',
      --desc_hl = 'group',
      key = 'SPACE f g',
      --key_hl = '',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '',
      --icon_hl = '',
      desc = ' Nvim Tree',
      --desc_hl = 'group',
      key = 'SPACE e',
      --key_hl = '',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '',
      --icon_hl = '',
      desc = ' ColorScheme',
      --desc_hl = 'group',
      key = 'SPACE c s',
      --key_hl = '',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
    {
      icon = '',
      --icon_hl = '',
      desc = ' history files',
      --desc_hl = 'group',
      key = 'SPACE f h',
      --key_hl = '',
      key_format = '      %s', -- `%s` will be substituted with value of `key`
      action = '',
    },
  },
}}
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
