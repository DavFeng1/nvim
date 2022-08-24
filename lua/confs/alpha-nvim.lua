local alpha_present, alpha_nvim = pcall(require, "alpha")
local dashboard_present, dashboard = pcall(require, "alpha.themes.dashboard")

if not alpha_present or not dashboard_present then
	return
end

require("alpha.term")


dashboard.section.buttons.val = {
    dashboard.button("CTRL P", "  Find File  ", ":Telescope find_files<CR>"),
    dashboard.button("SPC f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
    dashboard.button("CTRL F", "  Find Word  ", ":Telescope live_grep<CR>"),
    dashboard.button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
    dashboard.button("u", "   Update plugins", ":PackerSync <CR>"),
    dashboard.button("q", "   Quit Neovim", ":qa<CR>"),
}

-- Footer
local function footer()
    local version = vim.version()
    local nvim_version_info = "  Neovim v" .. version.major .. "." .. version.minor .. "." .. version.patch
    return nvim_version_info
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "AlphaFooter"

alpha_nvim.setup(dashboard.opts)

