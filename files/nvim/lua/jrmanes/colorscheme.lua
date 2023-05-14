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
-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     transparent = true, -- Disable setting background
--   }
-- })
-- vim.cmd("colorscheme nightfox")
-- ---------------------------------------------------------------------
-- local colors = require("catppuccin.palettes").get_palette()
-- require("catppuccin").setup({
-- 	flavour = "macchiato", --latte, frappe, macchiato, mocha
-- 	color_overrides = {
-- 		mocha = {
-- 			base = "#000000",
-- 		},
-- 	},
-- 	custom_highlights = {
-- 		Comment = { fg = colors.overlay1 },
-- 		LineNr = { fg = colors.overlay1 },
-- 	},
-- 	integrations = {
-- 		cmp = true,
-- 		dap = {
-- 			enabled = true,
-- 			enable_ui = true,
-- 		},
-- 		fidget = true,
-- 		gitsigns = true,
-- 		indent_blankline = {
-- 			enabled = true,
-- 			colored_indent_levels = false,
-- 		},
-- 		lsp_trouble = true,
-- 		markdown = true,
-- 		mason = true,
-- 		native_lsp = {
-- 			enabled = true,
-- 		},
-- 		neogit = true,
-- 		neotree = true,
-- 		nvimtree = true,
-- 		symbols_outline = true,
-- 		telescope = true,
-- 		treesitter = true,
-- 		treesitter_context = true,
-- 		which_key = true,
-- 	},
-- })

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


-- Add this line to switch to catppuccin
-- colorscheme catppuccin
vim.cmd([[
set background=dark
set termguicolors
colorscheme nord
]])
