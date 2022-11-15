local dap_present, dap = pcall(require, "dap")
local dapui_present, dap_ui = pcall(require, "dapui")
local dvc_present, dap_vscode_js = pcall(require, "dap-vscode-js")

if not dap_present or not dvc_present or not dapui_present then return end

dap_vscode_js.setup({
  adapters = { 'pwa-node', 'node-terminal'},
})

for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Mocha Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/mocha/bin/mocha.js",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    }
  }
end

vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

dap.listeners.after.event_initialized['dapui_config'] = function()
  dap_ui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end

