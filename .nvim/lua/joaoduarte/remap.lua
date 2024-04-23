vim.keymap.set("n", "<C-F>", "<Esc>:%!goimports -local \"sisu.sh\"<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")

-- utils
vim.keymap.set("n", "<C-c>f", "<cmd>!cp '%:p' '%:p:h/%:t:r-copy.%:e'<CR>")
vim.keymap.set("n", "Y", "y$")

-- Closing brackets remaps
vim.keymap.set("i", "{", "{<CR>}<Esc>ko")
vim.keymap.set("i", "(", "()<Esc>ha")
vim.keymap.set("i", "[", "[]<Esc>ha")
vim.keymap.set("i", "\"", "\"\"<Esc>ha")
vim.keymap.set("i", "'", "''<Esc>ha")
vim.keymap.set("i", "`", "``<Esc>ha")


-- Remaps for Go files only
vim.cmd [[
augroup GoRemaps
  autocmd!
  autocmd FileType go nnoremap <buffer> <C-g>g :!go-test <cword> '%:p'<CR>
  autocmd FileType go nnoremap <buffer> <C-g>r :!go test -run <cword> %:p:h -cover<CR>
augroup END
]]

vim.api.nvim_exec([[
  augroup MarkdownSettings
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal textwidth=80
  augroup END
]], false)
