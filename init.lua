-- Built-in configs
require "base"
require "confs.autocmds"
require "confs.keymaps"

require "latex"
require "plugins"

if vim.g.vscode then
  vim.cmd([[
    nnoremap zc :call VSCodeNotify('editor.fold')<CR>
    nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
    nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
    nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>

    function! MoveCursor(direction) abort
      if(reg_recording() == '' && reg_executing() == '')
        return 'g'.a:direction
      else
        return a:direction
      endif
    endfunction

    nmap <expr> j MoveCursor('j')
    nmap <expr> k MoveCursor('k')
  ]])
end
