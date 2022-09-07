local status, icons = pcall(require, 'nvim-webdev-icons')

if (not status) then return end

icons.setup {
  override = {

  },

  default = true
}
