local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
--
autocmd("BufEnter", { pattern = "*", command = ":lua require('lazygit.utils').project_root_dir()" })

vim.treesitter.language.register('markdown', 'octo')
