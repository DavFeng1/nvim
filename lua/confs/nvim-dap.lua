local dap_present, dap = pcall(require, "dap")

if not dap_present then return end

dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = { os.getenv('HOME') .. 'nodeDebug.js' },
    vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''}),
    vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''}),
}

