local M = {}

function M.play_sound(path)
  vim.fn.jobstart("mpv " .. path .. " --no-terminal --profile=fast")
end

return M
