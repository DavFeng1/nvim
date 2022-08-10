local present, lspsaga = pcall(require, "lspsaga")

if not present then return end


lspsaga.init_lsp_saga {
	'*';
}

