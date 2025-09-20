vim.g.lazyvim_picker = "fzf"

-- LazyVim.terminal.setup("footclient")

-- Show deprecation warnings
vim.g.deprecation_warnings = true

-- Show the current document symbols location from Trouble in lualine
-- You can disable this for a buffer by setting `vim.b.trouble_lualine = false`
vim.g.trouble_lualine = true

local opt = vim.opt

opt.relativenumber = false -- Absolute line numbers
opt.wrap = true -- Enable line wrap
