require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        library = {
          "${3rd}/luv/library",
          "${3rd}/love2d/library",
          "/usr/local/share/lua/5.1",
          "/usr/share/lua/5.1",
        },
      },
      diagnostics = {
        globals = { "vim" }, -- Don't warn about the global 'vim' object
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

require('lspconfig').cssls.setup{}
require('lspconfig').html.setup{}
require('lspconfig').pyright.setup{}
