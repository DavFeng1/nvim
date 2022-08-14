local devicons_present, web_devicons = pcall(require, 'nvim-web-devicons')

if not devicons_present then
	return
end


local M = {}

function M.eval()
	local buffer_name = vim.api.nvim_eval_statusline('%y', {}).str

	if buffer_name == "[alpha]" then
		return ''
	end

	local file_path = vim.api.nvim_eval_statusline('%f', {}).str
	local file_name = vim.api.nvim_eval_statusline('%t', {}).str
	local file_type = vim.fn.expand('%:e')

	-- File Icon
	local file_icon = web_devicons.get_icon(file_name, file_type, { default = true})
	local file_icon_hl = "%#" .. "DevIcon" .. file_type:gsub("^%l", string.upper) .. "#"
	local file_icon_with_hl = file_icon_hl .. file_icon

	-- Remove file name from path
	local formatted_file_path  = string.gsub(file_path, file_name .. '$', '')

	-- Replace slashes with > 
	formatted_file_path = formatted_file_path:gsub('/', ' > ')

	return '%#WinBarPath#'
		.. ' '
		.. formatted_file_path
		.. file_icon_with_hl
		.. ' '
		.. '%#WinBarFileName#'
		.. file_name

end

return M
