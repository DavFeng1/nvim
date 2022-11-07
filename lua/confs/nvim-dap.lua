local dap_present, dap = pcall(require, "dap")
local dvc_present, dap_vscode_js = pcall(require, "dap-vscode-js")

if not dap_present or not dvc_present then return end

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

vim.keymap.set('n', '<C-b>', '<Cmd> lua require\'dap\'.toggle_breakpoint() <CR>')
vim.keymap.set('n', '<S-k>', '<Cmd> lua require\'dap\'.step_out() <CR>')
vim.keymap.set('n', '<S-l>', '<Cmd> lua require\'dap\'.step_into() <CR>')
vim.keymap.set('n', '<S-j>', '<Cmd> lua require\'dap\'.step_over() <CR>')
vim.keymap.set('n', '<leader>du', '<Cmd> lua require\'dap.ui.widgets\'.hover() <CR>')


