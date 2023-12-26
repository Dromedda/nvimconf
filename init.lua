for _, source in ipairs {
  "astronvim.bootstrap",
  "astronvim.options",
  "astronvim.lazy",
  "astronvim.autocmds",
  "astronvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

-- {
  -- "ThePrimeagen/harpoon",
  -- branch="harpoon2",
  -- dependencies = {
    -- "nvim-lua/plenary.nvim",
  -- },
  -- opts = {},
  -- config = function()
    -- local harpoon = require("harpoon")
    -- vim.keymap.set("n", "<leader>ha", function() harpoon.mark.add_file() end)
    -- vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    -- vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
    -- vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end)
    -- vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end)
    -- vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end)
  -- end,
-- }

--Set the theme
vim.cmd "colorscheme flexoki-dark"

-- make all the background black
vim.api.nvim_command [[
    augroup *
        autocmd colorscheme * :hi normal guibg=#040404
    augroup END
]]

vim.o.termguicolors = true
vim.cmd [[silent! colorscheme * :hi normal guibg=#040404]] -- this is a hack to get rid of out of buffer background

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)

-- this is just some shit i thought was funneh, its not and it annoys me
vim.cmd [[
inoreabbrev btw by the way
inoreabbrev dont don't
inoreabbrev u you
inoreabbrev wtf what the fuck
inoreabbrev lgtm looks good to me
inoreabbrev lol AYY ROFLLMAO
]]
