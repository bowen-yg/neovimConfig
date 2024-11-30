return {
  "sphamba/smear-cursor.nvim",
  opts = {
      stiffness=0.4,
      trailing_stiffness = 0.2,
      trailing_exponent = 1
  },
  config=function ()
    require('smear_cursor').setup({
    cursor_color = '#d3cdc3',
})
  end
}
