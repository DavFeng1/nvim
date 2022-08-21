local present, nvim_web_devicons = pcall(require, "nvim-web-devicons")

if not present then
	return
end


nvim_web_devicons.setup {
	default = true
}

