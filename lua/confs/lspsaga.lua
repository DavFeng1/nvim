local present, lspsaga = pcall(require, "lspsaga")

if not present then return end


lspsaga.init_lsp_saga {
	error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
	symbol_in_winbar = {
		in_custom = true
	},
}

