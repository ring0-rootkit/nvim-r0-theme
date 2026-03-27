vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "miraculous"
vim.o.background = "dark"

require("miraculous").setup()
