-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

-- Remove background color for specific highlight groups
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")

-- Add more highlight groups as needed, for example:
-- vim.cmd("hi Comment guibg=NONE ctermbg=NONE")
-- vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")
-- ...

-- You can also set the background color to transparent
vim.cmd("hi Normal guibg=NONE ctermbg=NONE cterm=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE cterm=NONE")
