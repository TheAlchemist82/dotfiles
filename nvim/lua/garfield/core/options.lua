local set = vim.opt

--Numbering
set.number = true

--Indentation
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true
set.smartindent = true

--Line Wrapping
set.wrap = false

--Search Settings
set.ignorecase = true
set.smartcase = true

--Cursor Line
set.cursorline = true

--Appearance 
--set.termguicolors = true
--set.background = "dark"
set.signcolumn = "yes"

--Backspace
set.backspace = "indent,eol,start"

--Clipboard
set.clipboard:append("unnamedplus")

--Split Windows
set.splitright = true
set.splitbelow = true

set.iskeyword:append("-")

