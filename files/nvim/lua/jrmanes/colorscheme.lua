-- Themes Config
-- ---------------------------------------------------------------------
-- TokyoNight
-- vim.cmd("colorscheme tokyonight")
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true

-- ---------------------------------------------------------------------
-- NightFox
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    transparent = true, -- Disable setting background
  }
})
vim.cmd("colorscheme nightfox")
