vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = {"*.*"},
  callback = function()
    CustomFunctions.play_sound("~/dotfiles/sounds/zoom_in.wav")
  end
})

