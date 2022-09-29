local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "go",
    "rust",
    "hcl",
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "yaml",
    "yml",
    "scss",
    "less"
  }
}
