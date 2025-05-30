vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = {"*.*"},
  callback = function()
    -- CustomFunctions.play_sound("~/dotfiles/sounds/zoom_in.wav")
  end
})

local function chunk_block()
  -- Move to the end of the current line and visually select to the matching brace
  vim.cmd('normal! $va{')
  vim.cmd('normal! g$')
  local tail_pos = vim.fn.getpos('.')
  
  -- Move to the matching brace and visually select to the start of the line
  vim.cmd('normal! F}%g0')
  local head_pos = vim.fn.getpos('.')
  
  -- Return the visual selection mode and positions
  return {'v', head_pos, tail_pos}
end

-- Create a command to call the function
vim.api.nvim_exec([[
  function! ChunkBlock()
    return luaeval('chunk_block()')
  endfunction
]], false)

-- Create a custom text object using the function
vim.api.nvim_set_keymap('o', 'ah', ':<C-U>call ChunkBlock()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'ah', ':<C-U>call ChunkBlock()<CR>', { noremap = true, silent = true })

