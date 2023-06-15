return {
  "mfussenegger/nvim-dap",
  config = function(plugin, opts)
    require('dap.ext.vscode').load_launchjs()
  end,
}
