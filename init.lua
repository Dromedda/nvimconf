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

-- Set the theme
--pcall(vim.cmd.colorscheme, "koehler")
--pcall(vim.cmd.colorscheme, "torte")
--pcall(vim.cmd.colorscheme, "murphy")
--pcall(vim.cmd.colorscheme, "kanagawa-dragon")
--pcall(vim.cmd.colorscheme, "bamboo")
pcall(vim.cmd.colorscheme, "gruvbox")
--vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block"

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)

vim.cmd [[
inoreabbrev btw by the way
inoreabbrev dont don't
inoreabbrev u you
inoreabbrev wtf what the fuck
inoreabbrev lgtm looks good to me
inoreabbrev lol AYY ROFLLMAO
]]
