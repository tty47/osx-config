vim.opt.guicursor = ""

vim.opt.nu = true

vim.opt.errorbells = false

-- buffer-scoped
vim.opt.autoindent = true
-- window-scoped
vim.opt.cursorline = true
-- global scope
vim.opt.autowrite = true
-- -- --

vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.isfname:append("@-@")

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")
