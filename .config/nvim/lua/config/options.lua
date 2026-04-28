vim.cmd("let g:netrw_liststyle = 3")

-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

-- tabs & indentation
vim.opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.softtabstop = 4 -- soft tab stop not tabs on tab/backspace
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.smartindent = true -- smart auto-indent
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.grepprg = "rg --vimgrep" -- Use ripgrep if available
vim.opt.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show matches as you type

-- Visual Settings
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift
-- vim.opt.colorcolumn = "100" -- Show column at 100 characters
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- How long to show matching bracket
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options
vim.opt.showmode = false
vim.opt.pumheight = 10 -- Popup menu height
vim.opt.pumblend = 10 -- Popup menu transparency
vim.opt.winblend = 0 -- Floating window transparency
vim.opt.conceallevel = 0 -- Don't hide markup
vim.opt.concealcursor = "" -- Show markup even on cursor line
vim.opt.redrawtime = 10000 -- Timeout for syntax highlighting redraw
vim.opt.maxmempattern = 20000 -- Max memory for pattern matching
vim.opt.synmaxcol = 300 -- Syntax highlighting column limit

-- File Handling
vim.opt.backup = false -- Don't create backup files
vim.opt.writebackup = false -- Don't backup before overwriting
vim.opt.swapfile = false -- Don't create swap files
vim.opt.undofile = true -- Persistent undo
vim.opt.updatetime = 300 -- Time in ms to trigger CursorHold
vim.opt.timeoutlen = 500 -- Time in ms to wait for mapped sequence
vim.opt.ttimeoutlen = 0 -- No wait for key code sequences
vim.opt.autoread = true -- Auto-reload file if changed outside
vim.opt.autowrite = false -- Don't auto-save on some events
vim.opt.diffopt:append("vertical") -- Vertical diff splits
vim.opt.diffopt:append("algorithm:patience") -- Better diff algorithm
vim.opt.diffopt:append("linematch:60") -- Better diff highlighting (smart line matching)

-- Set undo directory and ensure it exists
local undodir = "~/.local/share/nvim/undodir" -- Undo directory path
vim.opt.undodir = vim.fn.expand(undodir) -- Expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, "p") -- Create if not exists
end

-- Behavior Settings
vim.opt.errorbells = false -- Disable error sounds
vim.opt.backspace = "indent,eol,start" -- Make backspace behave naturally
vim.opt.autochdir = false -- Don't change directory automatically
vim.opt.iskeyword:append("-") -- Treat dash as part of a word
vim.opt.path:append("**") -- Search into subfolders with `gf`
vim.opt.selection = "inclusive" -- Use inclusive selection
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.modifiable = true -- Allow editing buffers
vim.opt.encoding = "UTF-8" -- Use UTF-8 encoding
vim.opt.wildmenu = true -- Enable command-line completion menu
vim.opt.wildmode = "longest:full,full" -- Completion mode for command-line
vim.opt.wildignorecase = true -- Case-insensitive tab completion in commands

-- Cursor Settings
-- vim.opt.guicursor = {
-- 	"n-v-c:block", -- Normal, Visual, Command-line
-- 	"i-ci-ve:block", -- Insert, Command-line Insert, Visual-exclusive
-- 	"r-cr:hor20", -- Replace, Command-line Replace
-- 	"o:hor50", -- Operator-pending
-- 	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", -- All modes: blinking & highlight groups
-- 	"sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch mode
-- }

-- Folding Settings
vim.opt.foldmethod = "expr" -- Use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
vim.opt.foldlevel = 99 -- Keep all folds open by default

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

