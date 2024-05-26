-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[x", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]x", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>xx", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>xl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<leader>n", "<C-w>w", { desc = "Move focus to the next window", silent = true })

-- Quit/Save
vim.keymap.set("n", "<leader>w", function()
  CustomFunctions.play_sound("~/dotfiles/sounds/transition.wav")
  vim.cmd("w")
end, { desc = "Save" })
vim.keymap.set("n", "<leader>ww", function()
  CustomFunctions.play_sound("~/dotfiles/sounds/transition.wav")
  vim.cmd("wa")
end, { desc = "Save All" })
vim.keymap.set("n", "<leader>wq", ":wqa<CR>", { desc = "Save & Quit all" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit (no save)" })
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit all (no save)" })

-- Quickfix
vim.keymap.set("n", "]q", ":cn<CR>", { desc = "Next quickfix item" })
vim.keymap.set("n", "[q", ":cp<CR>", { desc = "Previous quickfix item" })

-- Nvim Tree
vim.keymap.set("n", "<leader>e", function()
  CustomFunctions.play_sound("~/dotfiles/sounds/panel.wav")
  vim.cmd("NvimTreeToggle")
end, { silent = true })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- TODO: Evaluate if all the below are needed after Kickstart update

-- Remap for reselecting visual blocks after indentation
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Remap for yanking visual blocks
vim.keymap.set("v", "y", "myy`y")

-- Remap text pasting on top of visually selected text
vim.keymap.set("v", "p", "P")

-- Moving lines up and down
vim.keymap.set("n", "<A-k>", ":move .-2<CR>==")
vim.keymap.set("n", "<A-j>", ":move .+1<CR>==")
vim.keymap.set("v", "<A-k>", ":move '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":move '>+1<CR>gv=gv")

-- Remap for exiting insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Buffer navigation
vim.keymap.set("n", "<TAB>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-TAB>", ":bprev<CR>", { desc = "Previous buffer" })

-- Obsidian
vim.keymap.set("n", "<leader>oo", function()
  local note_name = vim.fn.input("Note name: ")
  local obsidian_path = "/Users/petaryovkov/Obsidian/deez-notes"
  if note_name ~= "" then
    vim.api.nvim_command(":e " .. obsidian_path .. "/" .. note_name .. ".md")
  else
    local today = os.date("%Y-%m-%d")
    vim.api.nvim_command(":e " .. obsidian_path .. "/" .. today .. ".md")
  end
  vim.api.nvim_input("G")
  vim.api.nvim_input("o")
end)

-- vim: ts=2 sts=2 sw=2 et
