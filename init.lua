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
--pcall(vim.cmd.colorscheme, "kanagawa-dragon")
--pcall(vim.cmd.colorscheme, "torte")
--pcall(vim.cmd.colorscheme, "aura-dark")
--pcall(vim.cmd.colorscheme, "habamax")
--pcall(vim.cmd.colorscheme, "kanagawa-dragon")
--pcall(vim.cmd.colorscheme, "bamboo")

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)
