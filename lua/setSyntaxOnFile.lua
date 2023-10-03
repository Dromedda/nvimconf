vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.svelte" },
  command = ":set syntax=svelte",
})
