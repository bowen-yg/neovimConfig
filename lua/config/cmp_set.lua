local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    vim.notify("cmp not found!")
    return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

-- setup() is also available as an alias
require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "󰉿",
      Method = "󰆧",
      Function = "󰊕",
      Constructor = "",
      Field = "󰜢",
      Variable = "󰀫",
      Class = "󰠱",
      Interface = "",
      Module = "",
      Property = "󰜢",
      Unit = "󰑭",
      Value = "󰎠",
      Enum = "",
      Keyword = "󰌋",
      Snippet = "",
      Color = "󰏘",
      File = "󰈙",
      Reference = "󰈇",
      Folder = "󰉋",
      EnumMember = "",
      Constant = "󰏿",
      Struct = "󰙅",
      Event = "",
      Operator = "󰆕",
      TypeParameter = "",
    },
})
local lspkind =require('lspkind')
cmp.setup({

snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
},

mapping = cmp.mapping.preset.insert({
    ['K'] = cmp.mapping.select_prev_item(),
    ['J'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),  -- 取消补全，esc也可以退出
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
}),

["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),

formatting = {
    format = lspkind.cmp_format({
      --mode = 'symbol', -- show only symbol annotations
      maxwidth = {
        menu = 50, -- leading text (labelDetails)
        abbr = 30, -- actual suggestion item
      },
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default
      before = function (entry, vim_item)
        return vim_item
      end
    })
  },

window={
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
},
experimental={
    ghost_text=true
},

sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
    { name='path'},
},
{
    { name = 'buffer' },
})

})

cmp.setup.cmdline('/',{
    mapping=cmp.mapping.preset.cmdline(),
    sources={
        {name='buffer'}
}
})

cmp.setup.cmdline(':',{
    mapping=cmp.mapping.preset.cmdline(),
    sources=cmp.config.sources({
    {name='cmdline'},
    {name='path'}
})
})
