local status, ts = pcall(require, 'nvim-treesitter.configs')

if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'javascript',
    'html',
    'lua',
    'json',
    'css',
    'php',
    'ruby',
    'sql',
    'typescript'
  },
  autotag = {
    enable = true,
    enable_close_on_slash = false,
  }
}
