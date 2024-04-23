-- Define a custom highlight group with the desired background color
vim.cmd([[highlight MyNormal guibg=none]])

-- Map the custom highlight group to the Normal highlight group
vim.cmd([[autocmd ColorScheme * highlight Normal guibg=none]])
